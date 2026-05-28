// Local Databases — Introduction to sqflite
// What is sqflite?

// sqflite is a Flutter package used to work with a local SQLite database inside the app.

// It is much more powerful than SharedPreferences.

// Simple explanation
// SharedPreferences

// Stores simple key-value data

// sqflite

// Stores structured records in tables

// Example difference
// SharedPreferences example
// "username" -> "Ahmad"
// "isDarkMode" -> true
// sqflite example

// A table of students:

// id	name	age
// 1	Ahmad	20
// 2	Sara	21
// 3	Lina	19
// When do we use SharedPreferences?

// Use it when the data is:

// small
// simple
// one value at a time
// app settings/preferences

// Examples:

// dark mode
// login flag
// last opened page
// username
// When do we use sqflite?

// Use it when the data is:

// larger
// structured
// repeated in lists
// needs insert/update/delete/search

// Examples:

// notes app
// task app
// contacts app
// product list
// student records
// What can sqflite do?

// It can:

// create tables
// insert rows
// update rows
// delete rows
// read rows

// So it works more like a real local database.

// Simple table comparison
// SharedPreferences
// easy
// simple
// small data
// key-value only
// sqflite
// stronger
// for large/local app data
// tables and rows
// better for CRUD operations