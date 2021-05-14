#include "c6x-c.h"        
#include<stdio.h>
#include<math.h>
// 
//void DSPF_sp_biquad(float *restrict x,
//    float *b,
//    float *a,
//    float *delay,
//    float *restrict y,
//    const int nx)
//{
//    int i;
//    float sum1, sum2, sum3, sum4, sum5, sum, x0, x1, y0;
//
//    /* calculate first two samples (consume delay elements) */
//    y[0] = b[0] * x[0] + delay[0];
//    y[1] = b[0] * x[1] + delay[1] + b[1] * x[0] - a[1] * y[0];
//
//    /* prepare temp variables for i = 2 */
//    x0  = x[0];
//    x1  = x[1];
//    y0  = y[0];
//    sum = y[1];
//
//    _nassert(nx >= 2);
//    #pragma MUST_ITERATE(1,,)
//    for (i = 2; i < nx; i++)
//    {
//        sum5 = a[1] * sum;
//        sum4 = a[2] * y0;
//        sum1 = b[0] * x[i];
//        sum2 = b[1] * x1;
//        sum3 = b[2] * x0;
//
//        x0   = x1;
//        x1   = x[i];
//
//        y0   = sum;
//        sum  = sum3 + sum2 + sum1 - sum4 - sum5;
//        y[i] = sum;
//    }
//
//    /* find final delay elements to return */
//    delay[0] = b[1] * x1 + b[2] * x0 - a[1] * sum - a[2] * y0;
//    delay[1] = b[2] * x1 - a[2] * sum;
//}
#define N (128)
void DSPF_sp_biquad_cn(float *x, float *b, float *a,
    float *delay, float *y, const int nx)
{
    int i;
	
    for (i = 0; i < nx; i++)
    {
        y[i] = b[0] * x[i] + delay[0];
        delay[0] = b[1] * x[i] - a[1] * y[i] + delay[1];
        delay[1] = b[2] * x[i] - a[2] * y[i]; 
    }
}        


void DSPF_sp_biquad_opt(float *x, float *b, float *a,
    float *delay, float *y, const int nx)
{
    // float* Xaddr_DDR;
    // int X_Num = N, j = 0;
    // Xaddr_DDR = (float*) malloc(sizeof(float)*X_Num);
    // for(j=0;j<X_Num;j++) {
	//     Xaddr_DDR[j] = x[j];
    // }
	
    /*定义vector float指针变量，并在AM中分配地址*/
    // 128个float类型数据，128*4 = 512 = 0x200
    // 128/16 = 8
    int i;
    vector float*  Xaddr   = (vector float*)0x040000000;
    // vector float*  Yaddr   = (vector float*)0x040000200;
    vector float*  b0Xaddr   = (vector float*)0x040000400;
    vector float*  b1Xaddr   = (vector float*)0x040000800;
    vector float*  b2Xaddr   = (vector float*)0x040001200;

    M7002_datatrans(x, Xaddr, N*4);     //将X搬移到AM中。
	// vector float a0; //a0 == 1, no need to calculate
	// vector float a1;
	// vector float a2;
	vector float b0;
	vector float b1;
	vector float b2;
    
    // a0 = vec_svbcast(a[0]);
    b0 = vec_svbcast(b[0]);
    b1 = vec_svbcast(b[1]);
    b2 = vec_svbcast(b[2]);
    // a1 = vec_svbcast(a[1]);
    // a2 = vec_svbcast(a[2]);

    for(i=0;i<N;i+=16)
    {
        *b0Xaddr = vec_muli(b0,*Xaddr);
        *b1Xaddr = vec_muli(b1,*Xaddr);
        *b2Xaddr = vec_muli(b2,*Xaddr);
        b0Xaddr++;
        b1Xaddr++;
        b2Xaddr++;
        Xaddr++;
    }
    Xaddr   = (vector float*)0x040000000;
    b0Xaddr   = (vector float*)0x040000400;
    b1Xaddr   = (vector float*)0x040000800;
    b2Xaddr   = (vector float*)0x040001200;
    float b0X[N];
    float b1X[N];
    float b2X[N];
    M7002_datatrans(b0Xaddr, b0X, N*4);     //将b0X搬移到AM中。
    M7002_datatrans(b1Xaddr, b1X, N*4);     //将b1X搬移到AM中。
    M7002_datatrans(b2Xaddr, b2X, N*4);     //将b2X搬移到AM中。
    // // y[0] = b[0] * x[i] + delay[0];  //加入这句后性能会提高，不知道为什么
    // for (i = 0; i < nx; i++)
    // {
    //     y[i] = b0X[i] + delay[0];
    //     delay[0] = b1X[i] - a[1] * y[i] + delay[1];
    //     delay[1] = b2X[i] - a[2] * y[i]; 
    // }

   float sum1, sum2, sum3, sum4, sum5, sum, x0, x1, y0;
    y[0] = b0X[0] + delay[0];
    y[1] = b0X[1] + delay[1] + b1X[0] - a[1] * y[0];
    /* prepare temp variables for i = 2 */
    x0  = x[0];
    x1  = x[1];
    y0  = y[0];
    sum = y[1];
    // sum5 = b0X[i] + delay[0] = y[i];
    // sum = y[i-1];
    // y0 = y[i-2];
    // sum4 = a[2] * y[i];
    // sum1 = b[0] * x[i];
    // x1 = x[i-1];
    // sum2 = b[1] * x[i-1];
    // x0 = x[i-2];
    // sum3 = b[2] * x[i-2];
   for (i = 2; i < nx; i++)
   {
       sum5 = a[1] * sum;
       sum4 = a[2] * y0;
       sum1 = b0X[i];
       sum2 = b1X[i-1];
       sum3 = b2X[i-2];

       x0   = x1;
       x1   = x[i];

       y0   = sum;
       sum  = sum3 + sum2 + sum1 - sum4 - sum5;
       y[i] = sum;
   }
   /* find final delay elements to return */
   delay[0] = b[1] * x1 + b[2] * x0 - a[1] * sum - a[2] * y0;
   delay[1] = b[2] * x1 - a[2] * sum;
}           
/* ======================================================================= */
/* Parameters of fixed dataset                                             */
/* ======================================================================= */


float ptr_y_opt[N];
float ptr_y_cn[N];

/* ======================================================================= */
/* Initilized arrays with fixed test data                                  */
/* ======================================================================= */
float ptr_delay_opt[2] = { 0, 0 };
float ptr_delay_cn[2]  = { 0, 0 };

float ptr_ha[3] = { 1, -0.390641, 0.534300 };
float ptr_hb[3] = { 0.067504, 0.270019, 0.405028 };

float ptr_x[N] =
{
    -4.802592, 6.001369, -1.371723, 8.212952, 
    -6.36306, -4.723942, -7.08922, -7.278629, 
    7.385843, 1.594091, 0.9972038, -7.100904, 
    7.060621, 2.441102, -2.980952, 0.2649899, 
    -1.96384, -8.480666, -5.201677, -7.533621, 
    -6.321844, -5.20095, -1.654659, -9.006911, 
    8.054321, 8.895744, -0.1827183, -0.2149477, 
    -3.245612, 8.001078, -2.615065, -7.775945, 
    5.605041, -2.205224, -5.166174, -1.921757, 
    -8.07091, -7.360534, 8.841011, 9.122692, 
    1.504172, -8.804409, -5.304402, -2.936829
    , 6.423882, -9.691931, -9.139524, -6.620199, 
    2.98231, 4.634448, 2.95492, -0.9815254, 
    0.9401779, -4.073584, 4.893856, -6.2209, 
    3.735509, -6.329777, -2.630308, 2.512371, 
    5.604548, -8.377484, 8.587719, 5.514254, 
    -0.2641668, -1.282828, -1.064325, -3.87301, 
    0.1701736, 0.2154312, 6.352554, 5.896627, 
    2.886362, -2.427812, 6.231609, 0.6565113, 
    -2.985458, 8.780031, 7.518856, 1.003127, 
    2.449502, 1.740894, -5.845154, -3.975073, 
    -0.5815334, -5.390237, 6.886175, -6.104714, 
    -5.481565, -6.585839, -5.446714, -1.286026, 
    -3.777954, 8.467594, -1.395852, -6.303674, 
    8.097618, 9.594967, -1.2226, -7.777616, 
    -4.838706, -1.825603, 1.897922, -4.755765, 
    2.056862, 4.224316, -5.565065, -7.651647, 
    -4.066483, -3.624434, -1.516665, 0.1571655, 
    -8.289684, -4.750356, 6.020292, -9.415594, 
    8.577084, 4.606618, -0.2278204, 1.570501, 
    -5.254329, -0.8230228, 9.26177, 0.9361153, 
    0.4227161, -5.368113, -0.2220449, 2.481202
};

void function_test(){
	int i, n;
  	int equal = 1;
 	for (n = 8; n <= N; n += 8) {
        // 直接II型IIR数字滤波器的算法优化
		DSPF_sp_biquad_cn(ptr_x, ptr_hb, ptr_ha, ptr_delay_cn, ptr_y_cn, n);
   	    // DSPF_sp_biquad_cn(ptr_x, ptr_hb, ptr_ha, ptr_delay_opt, ptr_y_opt, n);
   	    DSPF_sp_biquad_opt(ptr_x, ptr_hb, ptr_ha, ptr_delay_opt, ptr_y_opt, n);
	    for (i = 0; i < n; i++){
            // printf("%d : %f , %f\n",i,ptr_y_cn[i] , ptr_y_opt[i]);
	        if(fabs(ptr_y_cn[i]-ptr_y_opt[i]) < 0.00001)		// 由于多次运算会造成误差
	            equal *= 1;
	        else{
	            equal *= 0;
	        }
    	}
 	}
    if(equal)
        printf("test success");
    else
        printf("test failed!");
}

void performance_test(){
	int n;
 	for (n = 8; n <= N; n += 8) {
        // 直接II型IIR数字滤波器的算法优化
		DSPF_sp_biquad_cn(ptr_x, ptr_hb, ptr_ha, ptr_delay_cn, ptr_y_cn, n);
//   	    DSPF_sp_biquad_cn(ptr_x, ptr_hb, ptr_ha, ptr_delay_opt, ptr_y_opt, n);
   	    DSPF_sp_biquad_opt(ptr_x, ptr_hb, ptr_ha, ptr_delay_opt, ptr_y_opt, n);
 	}
}

 void main ( )
  {	
    // 将SM 配置成 SRAM 存储模式
    int *cache=0x040140004; 
    int *cache1=0x040140000;
    volatile int cache_ok;
    *cache=0x1;
    *cache1=0x1;
    cache_ok = *cache1 ;
    while( cache_ok !=0 )
    cache_ok = *cache1 ;

// 	function_test();
  	performance_test();
  }
