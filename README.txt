This Project is designed for learning and was created in conjunction with another called TableViewDiffableDataSource. Both Projects do the same thing, they query a free COVID19 API, 
presenting the names of Countries in a tableView where each cell gets a Country Name. However, this project uses the old indexPath.row DataSource method to 
populate the TableView while the other project, TableViewDiffableDataSource populates the same TableView, obviously using Diffable DataSource. 

These 2 simple projects, help you quickly visualize the difference between the old and new datasource design paradigms. You can quicky see the old (cellForRowAt:) and 
(numberOfRowInSection:) methods used in the old dataSource design and how the new DiffableDataSource uses a snapshot in conjunction with a Hashable model
to populate/update a tableView or a collectionView. Thanks. 

