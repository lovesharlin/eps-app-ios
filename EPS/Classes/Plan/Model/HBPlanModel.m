//
//  HBPlanModel.m
//  EPS
//
//  Created by 郝斌 on 16/4/18.
//  Copyright © 2016年 hainx. All rights reserved.
//

#import "HBPlanModel.h"
#import <MJExtension.h>

@implementation HBPlanModel

- (id)mj_newValueFromOldValue:(id)oldValue property:(MJProperty *)property
{
    if (property.type.typeClass == [NSDate class]) {
        NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
        fmt.dateFormat = @"yyyy-MM-dd HH:mm:ss";
        return [fmt dateFromString:oldValue];
    }
    return oldValue;
}

- (instancetype)init
{
    if (self = [super init]) {
        self.isSelected = YES;
        self.isShowMore = NO;
        self.IsAuditPass = 1;
    }
    return self;
}

- (void)mj_keyValuesDidFinishConvertingToObject
{
    self.MoreDesc = [NSString stringWithFormat:@"物料类型：%d\r\n物料组：%d\r\n计划状态：%d", self.MaterialClassId, self.MaterialGroupId, self.PlanStatus];
}

@end
