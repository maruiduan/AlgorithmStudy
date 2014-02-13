//
//  ViewController.m
//  Sorting
//
//  Created by maruiduan on 14-2-13.
//  Copyright (c) 2014年 Ben. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//交换
void swap(int *x, int *y)
{
    int temp = *x;
    *x = *y;
    *y = temp;
}

//冒泡排序
void bubbleSort(int size, int array[])
{
    for (int i = 0; i < size-1; i++) {
        for (int j = 0; j < size-i-1; j++) {
                if (array[j]>array[j+1]) {
                swap(&array[j], &array[j+1]);
            }
        }
    }
}

//选择排序 相比冒泡 少了交换次数
void choiseSort(int size, int array[])
{
    int p;
    int si;
    for (int i = 0; i < size; i++) {
        p = 0;
        for (int j = 0; j < size-i; j++) {
            if (array[j]>p) {
                p = array[j];
                si = j;
            }
        }
        swap(&array[si], &array[size-i-1]);
    }
}

//快速排序
void quickSort(int size, int array[])
{
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    int array[20] = {10,123,2,4,234,33,27,13,234,98,34,2,58,91,23,43,456,3,8,76};
//    bubbleSort(20, array);
    choiseSort(20, array);
    
    for (int i = 0; i < 20; i++) {
        NSLog(@"%d",array[i]);
    }
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
