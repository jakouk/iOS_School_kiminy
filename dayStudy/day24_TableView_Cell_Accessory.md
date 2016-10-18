### Day24. TableView Cell Accessory 
#### Review
***
 - reuse(재사용)
 
#### TableView
***
```objective-c
//코드로 TableView를 만들때 사용하는 재사용 코드
-(UITableViewCell *)dequeueReusableCellWithIdentifier:(NSString *)identifier;

//스토리보드로 TableView를 만들때 사용하는 재사용 코드
-(UITableViewCell *)dequeueReusableCellWithIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath
```

#### Cell Accessory
***
```objective-c
//accessoryType은 3가지가 있다.
cell.accessoryType = UITableViewCellAccessoryCheckmark;

//3가지의 accessoryType 외에 다른것을 사용할때 사용한다. UIView가 올라갈수 있다.
UISwitch *switch = [[UISwitch alloc]initWithFrame:CGRectMake(0, 0, 50, 40)];
cell.accesoryView = switch;
```

#### TableView Editing
***
```objective-c
//Client -> TableView
setEditing:YES animated:YES;

//TableView -> Delegate
canEditRowAtIndexPath:

//TableView -> DataSource
editingStyleForRowAtIndexPath:

//TableView -> DataSource
tableView:commitedEditingStyle:

//삭제 & 추가
//DataSource -> TableView
deleteRowsAtIndexPath:withRowAnimation:

insertRowsAtIndexPath:withRowanimation:
```

#### TableView Moving
***
 - cell moving
```objecitve-c
//Client -> TableView
setEditing: YES animated : YES

//TableView -> Delegate
canMoveRowAtIndexPath:

//TableView -> Delegate
targetIndexPathForMoveFromRowAtIndexPath: toProposedIndexPath:

//TableView -> DataSource
moveRowAtIndexPath : toRowAtIndexPath:
```
