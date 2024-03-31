## 编译原理 lab0

### 电话号码识别

该程序可以识别电话号码,电话号码一般是由 "xxx-xxxx-xxxx"或者"xxx"组成,

所以我们的正规表达式如下:
$$
ddd(-dddd-dddd)?  \qquad	(d表示digit)
$$


```c
/* test.l */
%{
int wordCount=0;
int numcount=0;
int mobile_numcount = 0; 
%}

digit [0-9]

%%
{digit}{3}(-{digit}{4}-{digit}{4})? {printf("phone number: %s\n", yytext);}
%%  
int main() { 
printf("ok1\n");  
yylex(); /* start the  analysis*/  
printf("ok2\n"); 
return 0;  
}
```



>  ```make``` :			编译程序
>
> ```make test``` :              运行程序
>
> ```make clean``` :	    删除可执行文件





数据:

![image-20240331191533498](D:\2021102560jhz\linux\图片粘贴处\image-20240331191533498.png)



运行结果:

![image-20240331191503852](D:\2021102560jhz\linux\图片粘贴处\image-20240331191503852.png)
