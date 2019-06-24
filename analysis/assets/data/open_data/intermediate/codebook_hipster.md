
## hipster.csv & hipster.R

* **hipster.R**: The R code used to generate `hipster.csv` using the Seattle Public Library's [checkout](https://data.seattle.gov/dataset/Checkouts-by-Title-Physical-Items-/3h5r-qv5w) and [inventory](https://data.seattle.gov/Community/Library-Collection-Inventory/6vkj-f5xf) datasets. The original datasets are too large to include here but can be accessed at the above links.
* **hipster.csv**: Data file generated using `hipster.R` and with details as described below.

  - **What is this?**: Fiction books that are available for checkout in the Seattle Public Library but have not been checked out in the library's data history (since 2005). This dataset includes data provided by the Seattle Public Library as well as manually collected details.
  - **Source(s) & Methods**: All books discussed in this article are fiction books that have appeared in the Seattle Public Library’s physical book inventory for the entire span of time between September 2017 and May 2019 (the earliest and latest dates available for these data) and are still available, but have not been checked out any time between September 2005 and May 2019. Since we don’t have inventory data from 2005 - 2017, there is a chance that some of these books may have entered the library’s collection during that time span. At the absolute minimum, all the books on our list have been in the inventory and have gone unchecked out since September 2017. Both [checkout](https://data.seattle.gov/dataset/Checkouts-by-Title-Physical-Items-/3h5r-qv5w) and [inventory](https://data.seattle.gov/Community/Library-Collection-Inventory/6vkj-f5xf) data are publicly available thanks to the Seattle Public Library. Any data indicated below as being manually collected, was from Goodreads or Worldcat databases.
  - **Last Modified**: June 24, 2019
  - **Contact Information**: [Amber Thomas](mailto:amber@pudding.cool)
  - **Spatial Applicability**: Seattle Public Library
  - **Temporal Applicability**: Books in inventory between September 2017 and May 2019 that haven't been checked out between September 2005 and May 2019.
  - **Observations (Rows)**: There are 304 rows in this dataset. Each row represents a single book.
  - **Variables (Columns)**: There are 13 columns in this dataset. They
    are described below:

| Header           | Description                           | Data Type |
| :--------------- | :------------------------------------ | :-------- |
| Title            | The manually-cleaned book title | character |
| Author           | The manually-cleaned primary author's name (as `last name, first name`) | character |
| AuthorMore       | Any additional attributions (e.g., illustrator, translator etc) written as `(illustrator) last, first` | character |
| Remove           | We removed any books from our final visualization that were published after 2005 or only appeared to be available in the Seattle region. Those books are indicated by a `TRUE` in this column. Blank in this column indicates that the book was included in our final visualization | logical   |
| Pages            | Number of pages (as specified by WorldCat) | numeric   |
| WorldCatLink     | The (manually located) link to this book's WorldCat page | character |
| GoodreadsLink    | The (manually located) link to this book's Goodreads page (if it exists, otherwise blank) | character |
| GoodreadsRating  | The average rating for the book as indicated by Goodreads in June 2019 (if it exists, otherwise blank) | numeric   |
| GoodreadsReviews | The total number of reviews on Goodreads at time of manual data collection (June 2019) | numeric   |
| PubYear          | The year of publication (according to the Seattle Public Library's catalog data) | numeric   |
| BibNum           | The Seattle Public Library's Bibliographic number for each book | integer   |
| Subjects         | The combined subjects for each book of those found on WorldCat and in the library's catalog | character |
| Parent           | Manually tagged "parent subject categories" (i.e. `pnw` for books that have one of the Pacific Northwest States or `Northwest` in their `Subjects` etc.) | character |
