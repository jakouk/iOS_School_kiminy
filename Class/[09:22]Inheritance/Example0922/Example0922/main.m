//
//  main.m
//  Example0922
//
//  Created by jakouk on 2016. 9. 22..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizard.h"
#import "Dog.h"
#import "Cat.h"
#import "Bird.h"
#import "UniversityStudent.h"
#import "Teacher.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    
    Warrior *jason = [[Warrior alloc]init];
    jason.health = 100;
    jason.mana = 100;
    jason.physicalPower = 10;
    jason.magicalPower = 5;
    jason.name = @"제이슨";
    
    Wizard *mike = [[Wizard alloc]init];
    mike.health = 50;
    mike.mana = 500;
    mike.physicalPower = 5;
    mike.magicalPower = 50;
    mike.name = @"마이크";
    
    Warrior *jackson = [[Warrior alloc]init];
    jackson.physicalPower = 50;
    jackson.name = @"잭슨";
    
    [mike physicalAttackTo:jackson];
    
    Dog *ray = [[Dog alloc]init];
    ray.weight = 3.7;
    ray.high = 34.3;
    ray.name = @"레이";
    ray.crySound = @"멍멍";
    
    Cat *nana = [[Cat alloc]init];
    nana.weight = 2.9;
    nana.high = 25.7;
    nana.name = @"나나";
    nana.crySound = @"야옹";
    
    [ray cry:ray];
    [nana cry:nana];
    
    
    UniversityStudent *curry = [[UniversityStudent alloc]init];
    curry.age = 21;
    curry.name = @"커리";
    curry.grade = 2;
    [curry eat:@"고기"];
    
    Teacher *computerTeacher = [[Teacher alloc]init];
    computerTeacher.name = @"민희";
    computerTeacher.subject = @"컴퓨터";
    
    Student *justStudent = [[Student alloc]init];
    justStudent.name = @"영주";
    
    Student *anotherStudent = [[Student alloc]init];
    anotherStudent.name = @"철수";
    
    [computerTeacher teach:justStudent];
    [computerTeacher teach:anotherStudent];
    
    UniversityStudent *uniStudent = [[UniversityStudent alloc] init];
    uniStudent.name = @"광희";
    
    //student클래스만 받을수 있도록 만든 메서드의 입력값에는
    //UniversityStudent도 넣을 있도록 만들었다.
    [computerTeacher teach:uniStudent];
    
    Person *me = [[Person alloc]init];
    me.name = @"영미";

    [me adopt:nana];
    [justStudent adopt:ray];
    
    //사람 클래스로 만들었지만 결국 스튜던트객체이다.
    Person *mickey = [[Student alloc] init];
    
    //사람 클래스로 만들었지만 결국 대학생 객체이다.
    Person *minny = [[UniversityStudent alloc]init];
    
    //사람 클래스
    Person *mili = [[Person alloc]init];
    
    minny.name = @"민니";
    
    [minny adopt:nana];
    
    [mickey eat:@"고기"];
    [minny eat:@"튀김"];
    [mili eat:@"떡볶이"];
    
    
    
    
    return 0;
}
