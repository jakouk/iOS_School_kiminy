### Day23. TableView

#### review
***
 - Delegate
 - TDD

#### UITableView
***
 - 리스트의 형태로 정보를 보여주는 View

#### style
***
##### plain

 - 기본적인 TableView
 - 여러개의 Section을 가질수 있다.
 - 한 Section에는 여러개의 Row를 포함하고 있다.
 - 각각의 Section에는 Section을 표시하는 header, Footer title을 사용할수 있다.
 - Section을 빠르게 검색할수 있는 네비게이터 바를 index list라고 부른다.

##### grouped

 - 각 section을 group의 형태로 나타내는 테이블 뷰
 - 데이터의 디테일한 정보를 표현할때 많이 사용된다.

#### protocol
***
##### DataSource

- 프로토콜을 사용하여 테이블뷰에서 보여줄 데이터를 관리할 대리인의 역할을 정의해 둔 것
 ```objective-c
@requires
//테이블뷰의 각섹션별 열의 개수를 설정
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

//Row별 Cell객체
(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

 @optional
//테이블 뷰 섹션의 개수를 설정
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
```
##### Delegate

 - 프로토콜을 사용하여 테이블뷰의 대리자로써의 수행할 수 있는 역할들을 정의해 둔 것
역할
- 헤더 또는 풋터의 높이를 설정 : Variable height support
- 헤터 또는 풋터 뷰를 제공 : Secion Informations
- 셀을 선택하였을 때 수행할 동작 관리 : Selection
- 셀의 삭제 될 때의 동자 등의 관리 : Edition

##### NSIndexPath Class
 -셀의 위치를 나타낼 Data Type으로 Section정보와 해당 섹션에서의 열(Row) 정보를 가지고 있다.

##### 웹사이트에 있는 사진을 적용할때
 - NSURL *url = [NSURL URLWithString:@“https://namdslkfjsldkfjl;as”];
 - NSData *data = [NSData dataWithContentsOfURL:url];
 - cell.imageView.image = [UIImage imageWithData:data];
