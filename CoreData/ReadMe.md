
[Ali Akhtar on medium](https://medium.com/@aliakhtar_16369/mastering-in-core-data-part-0-5a529c6c5a93)

[10 tips for core data](https://medium.com/ios-os-x-development/10-core-principles-to-use-coredata-without-blowing-your-head-off-5ed11c623c6b)

## How Does Core Data Save Data?
-  **Persistent Stores**
- Core Data saves (or persists) data into something called a persistent store (think storage). The store is where the data lives.

- **Types of Stores**
- There are three different types of persistent stores Core Data supports on iOS:
    - a SQLite store (the default)
    - a binary store
     - an in-memory store.

- **SQLite**
- SQLite is almost always the right choice for your persistent store; it means your data is stored in a SQL relational database, and there are a few handy features in Core Data (like model caching during migration) that only work with the SQLite store. And since you don’t interact with the persistent store directly, you don’t need to know any SQL to use the SQLite store.

- **In-memory**
- The in-memory and binary stores have different characteristics in terms of memory usage and performance. The in-memory store can be appropriate when you have a small data model that can fit in memory all at once and that doesn’t need to be saved to disk – for example a cache.

- **Binary**
- The binary store can be appropriate when you always need the database to be read and written in its entirety—for example if you are using a file format such as CSV.

- **Abstracting the Store**
- Core Data abstracts the persistent store's details. That means you won’t usually interact with the store directly. You can think of Core Data as a layer that sits between your code and the underlying store, making it easier for the two to communicate.
- Core Data provides a common interface for saving and fetching data, no matter what kind of store sits below. Whatever type of store you choose, you’ll always use the same Core Data classes to access and manage your data. And you won't need to learn a database-specific language to manage your data; you can do it all in Swift.
