# README

About the project:

* Ruby version: 2.6.4

* Install dependencies:

1. Install Gems 
```sh
$ bundle install
```

2. Install PostgreSQL Database or:
```sh
$ docker-compose up
```

* Database initialization: 
```sh
$ rails db:setup
```

* How to run the tests: 
```sh
$ bundle exec rspec
```

* Start project: 
```sh
$ rails s
```
Access the endpoint books using: localhost:3000/api/v1/books

# This API follows the https://jsonapi.org/ specification.

## How to create a author?

### POST - http://localhost:3000/api/v1/authors

Request
```
{ 
	"data": {
		"type": "authors",
		"attributes": { 
			"name": "Patrick Rothfuss"
		}
	}
}
```

Response
```
{
  "data": {
    "id": "1",
    "type": "authors",
    "links": {
      "self": "http://localhost:3000/api/v1/authors/1"
    },
    "attributes": {
      "name": "Patrick Rothfuss"
    },
    "relationships": {
      "books": {
        "links": {
          "self": "http://localhost:3000/api/v1/authors/1/relationships/books",
          "related": "http://localhost:3000/api/v1/authors/1/books"
        }
      }
    }
  }
}
```


## How to add a new book?

```
In the example below we are using Patrick Rothfuss id in the relationship authors.
```

### POST - http://localhost:3000/api/v1/books  
Request
```
{ 
	"data": {
		"type": "books",
		"attributes": { 
			"title": "The Name of The Wind",
			"isbn": "9780345805362",
			"price": "35.99",
			"short-description": "The Name of the Wind, also called The Kingkiller Chronicle: Day One, is a heroic fantasy novel written by American author Patrick Rothfuss."
		},  
		"relationships": {  
			"author": {  
        "data": { "type": "authors", "id": "1" }
      }
		}
	}
}
```

Response  
```
{
  "data": {
    "id": "1",
    "type": "books",
    "links": {
      "self": "http://localhost:3000/api/v1/books/1"
    },
    "attributes": {
      "title": "The Name of The Wind",
      "isbn": "9780345805362",
      "price": "35.99",
      "short-description": "The Name of the Wind, also called The Kingkiller Chronicle: Day One, is a heroic fantasy novel written by American author Patrick Rothfuss."
    },
    "relationships": {
      "author": {
        "links": {
          "self": "http://localhost:3000/api/v1/books/1/relationships/author",
          "related": "http://localhost:3000/api/v1/books/1/author"
        }
      }
    }
  }
}
```

## How to make a request about a single specific book

### GET - http://localhost:3000/api/v1/books/:id

Response
```
{
  "data": {
    "id": "1",
    "type": "books",
    "links": {
      "self": "http://localhost:3000/api/v1/books/1"
    },
    "attributes": {
      "title": "The Name of The Wind",
      "isbn": "9780345805362",
      "price": "35.99",
      "short-description": "The Name of the Wind, also called The Kingkiller Chronicle: Day One, is a heroic fantasy novel written by American author Patrick Rothfuss."
    },
    "relationships": {
      "author": {
        "links": {
          "self": "http://localhost:3000/api/v1/books/1/relationships/author",
          "related": "http://localhost:3000/api/v1/books/1/author"
        }
      }
    }
  }
}
```

## How to make a request for a collection of books?

### GET - http://localhost:3000/api/v1/books

Response
```
{
  "data": [
    {
      "id": "1",
      "type": "books",
      "links": {
        "self": "http://localhost:3000/api/v1/books/1"
      },
      "attributes": {
        "title": "The Name of The Wind",
        "isbn": "9780345805362",
        "price": "35.99",
        "short-description": "The Name of the Wind, also called The Kingkiller Chronicle: Day One, is a heroic fantasy novel written by American author Patrick Rothfuss."
      },
      "relationships": {
        "author": {
          "links": {
            "self": "http://localhost:3000/api/v1/books/1/relationships/author",
            "related": "http://localhost:3000/api/v1/books/1/author"
          }
        }
      }
    },
    ...
  ],
  "links": {
    "first": "http://localhost:3000/api/v1/books?page%5Blimit%5D=10&page%5Boffset%5D=0",
    "next": "http://localhost:3000/api/v1/books?page%5Blimit%5D=10&page%5Boffset%5D=10",
    "last": "http://localhost:3000/api/v1/books?page%5Blimit%5D=10&page%5Boffset%5D=149992"
  }
}
```

## How to delete a book?

### DELETE - http://localhost:3000/api/v1/books/1

Response

Status 204 - No Content

## ISBNE Filter

### GET - http://localhost:3000/api/v1/books?filter[isbn]=9780345805362


Response
```
{
  "data": [
    {
      "id": "1",
      "type": "books",
      "links": {
        "self": "http://localhost:3000/api/v1/books/1"
      },
      "attributes": {
        "title": "The Name of The Wind",
        "isbn": "9780345805362",
        "price": "35.99",
        "short-description": "The Name of the Wind, also called The Kingkiller Chronicle: Day One, is a heroic fantasy novel written by American author Patrick Rothfuss."
      },
      "relationships": {
        "author": {
          "links": {
            "self": "http://localhost:3000/api/v1/books/1/relationships/author",
            "related": "http://localhost:3000/api/v1/books/1/author"
          }
        }
      }
    },
    ...
  ],
  "links": {
    "first": "http://localhost:3000/api/v1/books?page%5Blimit%5D=10&page%5Boffset%5D=0",
    "next": "http://localhost:3000/api/v1/books?page%5Blimit%5D=10&page%5Boffset%5D=10",
    "last": "http://localhost:3000/api/v1/books?page%5Blimit%5D=10&page%5Boffset%5D=149992"
  }
}
```

## Title Filter

### GET - http://localhost:3000/api/v1/books?filter[title]=The+Name+of

Response
```
{
  "data": [
    {
      "id": "1",
      "type": "books",
      "links": {
        "self": "http://localhost:3000/api/v1/books/1"
      },
      "attributes": {
        "title": "The Name of The Wind",
        "isbn": "9780345805362",
        "price": "35.99",
        "short-description": "The Name of the Wind, also called The Kingkiller Chronicle: Day One, is a heroic fantasy novel written by American author Patrick Rothfuss."
      },
      "relationships": {
        "author": {
          "links": {
            "self": "http://localhost:3000/api/v1/books/1/relationships/author",
            "related": "http://localhost:3000/api/v1/books/1/author"
          }
        }
      }
    },
    ...
  ],
  "links": {
    "first": "http://localhost:3000/api/v1/books?page%5Blimit%5D=10&page%5Boffset%5D=0",
    "next": "http://localhost:3000/api/v1/books?page%5Blimit%5D=10&page%5Boffset%5D=10",
    "last": "http://localhost:3000/api/v1/books?page%5Blimit%5D=10&page%5Boffset%5D=149992"
  }
}
```