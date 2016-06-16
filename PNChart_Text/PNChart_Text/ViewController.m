//
//  ViewController.m
//  PNChart_Text
//
//  Created by mac on 16/5/31.
//  Copyright © 2016年 niuxinhuai. All rights reserved.
//

#import "ViewController.h"
#import "PNChart.h"
@interface ViewController ()
{
    PNPieChart *pieChart;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //Bar
   /* PNBarChart * barChart = [[PNBarChart alloc] initWithFrame:CGRectMake(0, 135.0, SCREEN_WIDTH, 200.0)];
    [barChart setXLabels:@[@"SEP 1",@"SEP 2",@"SEP 3",@"SEP 4",@"SEP 5"]];
    [barChart setYValues:@[@1,  @10, @2, @6, @3]];
    [barChart strokeChart];
    [self.view addSubview:barChart];*/

    //Circle Chart
    /*PNCircleChart * circleChart = [[PNCircleChart alloc] initWithFrame:CGRectMake(0, 80.0, SCREEN_WIDTH, 100.0) total:[NSNumber numberWithInt:100] current:[NSNumber numberWithInt:99] clockwise:YES];
    circleChart.backgroundColor = [UIColor clearColor];
    [circleChart setStrokeColor:PNGreen];
    [circleChart strokeChart];
    [self.view addSubview:circleChart];*/
    
//    Line Chart
   /* PNLineChart * lineChart = [[PNLineChart alloc] initWithFrame:CGRectMake(0, 135.0, SCREEN_WIDTH, 200.0)];
    [lineChart setXLabels:@[@"SEP 1",@"SEP 2",@"SEP 3",@"SEP 4",@"SEP 5"]];
    
    // Line Chart No.1
    NSArray * data01Array = @[@60.1, @160.1, @126.4, @262.2, @186.2];
    PNLineChartData *data01 = [PNLineChartData new];
    data01.color = PNFreshGreen;
    data01.itemCount = lineChart.xLabels.count;
    data01.inflexionPointStyle = PNLineChartPointStyleCircle;
    data01.getData = ^(NSUInteger index) {
        CGFloat yValue = [data01Array[index] floatValue];
        return [PNLineChartDataItem dataItemWithY:yValue];
    };
    // Line Chart No.2
    NSArray * data02Array = @[@20.1, @180.1, @26.4, @202.2, @126.2];
    PNLineChartData *data02 = [PNLineChartData new];
    data02.color = PNTwitterColor;
    data02.itemCount = lineChart.xLabels.count;
    data02.inflexionPointStyle = PNLegendItemStyleSerial;
    data02.getData = ^(NSUInteger index) {
        CGFloat yValue = [data02Array[index] floatValue];
        return [PNLineChartDataItem dataItemWithY:yValue];
    };
    
    lineChart.chartData = @[data01, data02];
    [lineChart strokeChart];
    [self.view addSubview:lineChart];*/
    
    //饼状图
    NSArray *items = @[[PNPieChartDataItem dataItemWithValue:10 color:PNRed description:@"阿里巴巴"],
                       [PNPieChartDataItem dataItemWithValue:20 color:PNBlue description:@"腾讯"],
                       [PNPieChartDataItem dataItemWithValue:40 color:PNGreen description:@"百度"],
                       ];
    
    
    
    pieChart = [[PNPieChart alloc] initWithFrame:CGRectMake(40.0, 155.0, 240.0, 240.0) items:items];
    pieChart.descriptionTextColor = [UIColor whiteColor];
    pieChart.descriptionTextFont  = [UIFont fontWithName:@"Avenir-Medium" size:14.0];
    [pieChart strokeChart];
    [self.view addSubview:pieChart];
    
    
    
    
    
    
   /* data01.dataTitle = @"Alpha";
    data02.dataTitle = @"Beta Beta Beta Beta";
    
    //Build the legend
    self.lineChart.legendStyle = PNLegendItemStyleSerial;
    self.lineChart.legendFontSize = 12.0;
    UIView *legend = [self.lineChart getLegendWithMaxWidth:320];
    
    //Move legend to the desired position and add to view
    [legend setFrame:CGRectMake(100, 400, legend.frame.size.width, legend.frame.size.height)];
    [self.view addSubview:legend];
    
    
    //For Pie Chart
    
    //Build the legend
    self.pieChart.legendStyle = PNLegendItemStyleStacked;
    self.pieChart.legendFontSize = 12.0;
    UIView *legend = [self.pieChart getLegendWithMaxWidth:200];
    
    //Move legend to the desired position and add to view
    [legend setFrame:CGRectMake(130, 350, legend.frame.size.width, legend.frame.size.height)];
    [self.view addSubview:legend];*/
    
    

    
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSArray *items = @[[PNPieChartDataItem dataItemWithValue:arc4random()%100 color:PNRed description:@"阿里巴巴"],
                       [PNPieChartDataItem dataItemWithValue:arc4random()%100 color:PNBlue description:@"腾讯"],
                       [PNPieChartDataItem dataItemWithValue:arc4random()%100 color:PNGreen description:@"百度"],
                       ];
    
    [pieChart updateChartData:items];
    [pieChart strokeChart];
}








@end
