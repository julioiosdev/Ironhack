//
//  DetailsViewController.m
//  OnlyAnimals
//
//  Created by Carlos Butron on 12/05/15.
//  Copyright (c) 2015 Carlos Butron. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *animalPhotoImageView;
@property (weak, nonatomic) IBOutlet UILabel *animalCountLabel;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.animalPhotoImageView setImage:self.photoAnimal];
    
    AnimalsModel *count = [AnimalsModel sharedModel];
        
    self.animalCountLabel.text = [NSString stringWithFormat:@"%@ animals", [NSNumber numberWithInt:count.animalCount]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
