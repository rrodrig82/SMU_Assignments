# Week 06-Python-APIs 
## Objectives
* Be able to make GET requests with requests.
* Be able to convert JSON into a Python dictionary.
* Read and apply API documentation.
* Sign up for and use an API key.
* Create applications from scratch using nothing but knowledge of Python and an API documentation.
* Load JSON from API responses into a Pandas DataFrame.
* Be able to use try and except blocks to handle errors.
* Successfully use the Google Maps and Places API to obtain information about geographic areas.
* Understand how to use the Census API wrapper.
* Understand the concept of rate limits and the importance of creating "test cases" prior to running large scripts.
* Have a firmer understanding of how to dissect new API documentation.


### **Additional Resources** 
* [REST API Tutorial](https://restfulapi.net/)

* [Fake Online REST API Testing](https://developers.google.com/maps/)

* [Understanding REST API](https://spring.io/understanding/REST)

* [JSON Formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en)

* [Postman](https://www.getpostman.com/)

* [HTTP response status codes](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes)

* [Space X API](https://api.spacexdata.com/v3/launches)

* [Open Weather API](https://openweathermap.org/api)

* [Additional Doc Weather API](https://openweathermapy.readthedocs.io/en/latest/#fetch-current-weather-data)

* [World Bank API](https://datahelpdesk.worldbank.org/knowledgebase/topics/125589-developer-information)

* [World Bank API Structure](https://datahelpdesk.worldbank.org/knowledgebase/articles/898581-api-basic-call-structure)

* [Third Party Apps World Bank](https://data.worldbank.org/products/third-party-apps)

* [City API](https://github.com/wingchen/citipy)

* [Review tv_ratings api documentation](http://static.tvmaze.com/apidoc/)

* [Error Types in Python](https://www.tutorialsteacher.com/python/error-types-in-python)

* [Census API](https://www.census.gov/developers/)

* [Google API](https://developers.google.com/maps/)

* [Google Maps API](https://developers.google.com/maps/)

* [Google Places API](https://developers.google.com/places/)

* [gmaps Figures and Layers](https://jupyter-gmaps.readthedocs.io/en/latest/api.html#figures-and-layers)

* [gmaps Training](https://jupyter-gmaps.readthedocs.io/en/latest/tutorial.html)

* [Capping Queries Google](https://github.com/coding-boot-camp/DataViz-Lesson-Plans/blob/master/01-Lesson-Plans/06-Python-APIs/3/Activities/Resources/Capping_Queries.md)

* [Hide API Keys](https://towardsdatascience.com/how-to-hide-your-api-keys-in-python-fb2e1a61b0a0)

* [Global Git ignore](https://help.github.com/en/articles/ignoring-files)

* [`*args` and `**kwargs`](https://realpython.com/python-kwargs-and-args/)


## Lesson 1: APIs
* Be able to make GET requests with requests.

* Be able to convert JSON into a Python dictionary.

* Read and apply API documentation.

* Sign up for and use an API key.


* 01-Ins_RequestsIntro  
    * Outbound Request - client (application/device asks for info)
    * Inbound Response - server (computer supplies information to client)
    * endpoints used for communication (geometry) - one end of a communication channel.   the touchpoints of this communication are considered endpoints
    * JSON File returned by API Call (format) Typically come back as list of Dictionaries
        * Can come back (JSON, CSV, XML, RSS) file types
    * Types HTTP requests.
    	- Get
        - Post
        - Put
        - Patch
        - Delete
    * Status codes indicate the result of the HTTP request.
        - 1XX - informational
        - 2XX - success
        - 3XX - redirection
        - 4XX - client error
        - 5XX - server error
    * `requests.py` standard library for making API requests.
    * `json.py` allow python to pull in and parse JSON.
    
    ```python
    # example request
    import requests
    import json
    # URL for GET requests
    url = "https://api.someplace.com/v2"
    # print response object to see status code
    print(requests.get(url))
    # inorder to convert response object received into JSON format must call .json()
    response = requests.get(url)).json()
    ```
* 02-Stu_SpaceX  
* 03-Ins_ManipulatingResponses  **--BASIC HOMEWORK--**
    * JSON structurally similar to Python's dictionaries as both use "key" and "value" pairings. 
        * You can navigare through the parsed response like one would a dictionary.
        * Both Python dictionaries and JSON objects can contain dictionaries within dictionaries. To access the data stored within these sub-dictionaries, simply pass the parent key within brackets and then follow it up with the child key in a second set of brackets

* 04-Stu_FarFarAway  **--Practice Calling keys and values--**

* 05-Par_NumberFacts  
    * Practice creating an interactive application using "numbers" API.
    
* 06-Ins_OMDbRequests  
    * base URL ends with `?t=` this is called a **query string**
        * Query Strings arre a way of sending information from the client to the server, so the server can return more specific data.  `t` stands for "title" in this api call.
        * API keys are used by developers to collect data from APIs with some layers of protection on them. Without a valid API key for the omdb API, for example, no data would be returned.
        
* 07-Stu_Explore_OMDb_API  
* 08-Stu_MovieQuestions  
* 09-Ins_IterativeRequests **--Basic Homework--**
    * Sometimes API's respond with only some of the information / have limits to how many times the API can be called.  
        * One way around this limitation is to make iterative send GET requests. 
        
        ```python
        # create a blank list
        response_json = []
        # Make a request for each of the indices
        for x in range(len(indices)):
        print(f"Making request number: {x} for ID: {indices[x]}")

        # Get one of the posts
        post_response = requests.get(url + str(indices[x]))

        # Save post's JSON
        response_json.append(post_response.json())
        ```
        
* 10-Stu_MovieLoop  
* 11-Ins_NYTAPI  
    * `config.py` file to store the api_key, and discuss that it is good practice to not upload API keys to GitHub. While this API key is free, some services charge past a certain usage point. Therefore, students should protect them from public view. Discuss with students that they should add `config.py` to their `.gitignore` file or create environment variables for all homework and projects they will be saving to a repo.
* 12-Stu_RetrieveArticles  


## Lesson 2: Working with Weather & City APIs
* Create applications from scratch using nothing but their knowledge of Python and an API documentation

* Load JSON from API responses into a Pandas DataFrame

* Be able to use `try` and `except` blocks to handle errors


* 01-Stu_JSONTraversalReview  
    * Practice with traversing JSON object returned
    
* 02-Stu_RequestReview
    * More practice with API calls :) 
    
* 03-Ins_OpenWeatherRequest **--BASIC HOMEWORK--**
    * Openweathermapy - simple API to access items in a comfortable way
    * Reminder store API keys in `config.py` file.
    * `?` question mark in URL represents the beginning of query string.
    * `q` parameter in openweather API allows application to search for weather by city name.  


    ```python
    # create a params dictionary (object) to pass through requests.get
    params = {"appid":api_key,
              "q":city
              }
    response = requests.get(url,params=params)
    ```
    
    * **Make sure to spend a lot of time reading the documentation of an API before writing code**
        
* 04-Stu_Burundi **--BASIC HOMEWORK--**  
* 05-Ins_OpenWeatherDataFrame  
    * Use Pandas with with API calls. 
    * More plotting practice.

* 06-Stu_TVRatings  
* 07-Ins_ExceptionHandling  
    * try/except: The rest of the statements after the except block will continue to be executed, regardless if the exception is encountered or not.
        * Python will run code in `try` block as normal but if code throws exception will run code inside `except` block instead before continuing to run code. 
    * additional to try/except
        * else: In Python, keywords else and finally can also be used along with the try and except clauses. While the except block is executed if the exception occurs inside the try block, the else block gets processed if the try block is found to be exception free.
        * finally: As a consequence, the error-free try block skips the except clause and enters the finally block before going on to execute the rest of the code. If, however, there's an exception in the try block, the appropriate except block will be processed, and the statements in the finally block will be processed before proceeding to the rest of the code.
    * **BEST PRACTICE** when writing try/except statements specify the precise errors to handle. See "Error Types in Python" link in Additional Resources.
        * Catching specific exceptions allows programmers to handle specific errors in very precise ways.
        * In cases where the programmer wants to handle a particular error in a particular fashion, specifying the exception type is best practice.
        * In cases where the programmer wants to intercept any error — like for logging purposes — it is fine to catch a general exception.
        
* 08-Stu_MakingExceptions  
    * When passing `pass` statement in `except` block, will still work but with no console output to refer to.
    * Check out python `.get()` method [get()](https://www.geeksforgeeks.org/get-method-dictionaries-python/)
    
* 09-Ins_OpenWeatherWrapper  
    * All parameters defined in OpenWeatherMap.org's API documentation can be passed to the functions in Openweathermapy as keyword arguments **params**. The query string always depends on the request (API call), but unsupported parameters will not raise an error. Most common ones to be used are units, lang and (if needed) APPID. So it may be a good idea to pass them in the form of a settings dictionary:
    * `*args` and `**kwargs` allow you to pass multiple arguments or keyword arguments to a function
        * `*args` - allows you to pass a varying number of positional arguments "tuples". `"*"` is an unpacking operator
        * `**kwargs` - works just like `*args`, but instead of accepting positional arguments it accepts keyword (or named) arguments.
        
        ```python
        # create dictionary to store key/value pairs to pass in query string. **kwargs
        settings = {"units":"metric","aapid":api_key}
        
        # own.get_current() method converts response to JSON
        current_weather_paris = own.get_current("Paris",**settings)
        
        # create *arg to traverse through JSON
        summary = ["name", "main.temp"]
        data = current_weather_paris(*summary)
        ```
* 10-Stu_MapWrap  **--Basic Homework--**
    * example how you can use `*args` and `**kwargs to query openweatherpy API.
* 11-Ins_WorldBankAPI  
* 12-Stu_TwoCalls  
* 13-Ins_CitiPy  **--Basic Homework--**
    * CitiPy is being utilized in the for loop to add cities for every pair of coordinates in our list.
    * Working with CitiPy will directly relate to homework in determining Cities.  [CitiPy documentation](https://github.com/wingchen/citipy).



## Lesson 3: Bank Deserts
* Be able to successfully use the Google Maps and Places API to obtain information about geographic areas.

* Understand how to use the Census API wrapper.

* Understand the concept of rate limits and the importance of creating "test cases" prior to running large scripts. **IMPORTANT**

* Have a firmer understanding of how to dissect new API documentation.

* Be able to visually represent data on a map with Jupyter Gmaps.


* Goal of todays class to play role of social scientists.  Using programming skills and API insights to research "banking desert".  Banking dessert predominantly lower-income or elderly neighborhoods where there is often dearth of banks.  Instead abundance of high interest "check-cashing" and "money transfer" providers.  Also pay attention when calling in gmap and the various functionality because we will see some of these in JavaScript, CSS and HTML in a couple of weeks. 

* 01-Ins_Google_Geocode  
    * Reminder printing url in notebook will also expose your key.
    * String formatting using `%`.  `%s` can be used to substitue a string variable.  At end of string must pass `%` andthen a tuple of string variables to be substitued into each occurrence of `%s`
    
* 02-Ins_Google_Places  
    * Within `requests library` paramater of pf `params` where we can pass a dictionary of paramters to build our URL.  
    
* 03-Stu_Google_Drills  
    * Practice using `params` parameter and making multiple calls to various end points 
    
* 04-Ins_NearestRestr  
    *  Using pandas's `iterrows()` and `.loc` methods are used to find the closest restaurant of each type and store them in a data frame.
    * .get() method where the second parameter will override the default of returning `None`.  In this example return an empty string.
    * In each iteration of example, the `keyword` value is overwritten to be the new target.
    
* 05-Stu_Google_Complex 
    * complex build out using pandas data frames, multiple API end point calls
    
* 06-Evr_Jupyter_Gmaps  
    * Working with jupyter nbextensions
    
    ```bash
    # enable jupyter extensions
    jupyter nbextension enable --py --sys-prefix widgetsnbextension
    # install gmaps
    pip install gmaps
    # enable gmaps
    jupyter nbextension enable --py --sys-prefix gmaps
    ```
    
* 07-Stu_Airport_Map  
* 08-Ins_Census  
* 09-Stu_Census  
* 10-Stu_BankDeserts_Heatmap  
    * Using gmap the following three figures were created:
        * A map with a heatmap_layer of the poverty rate for each city.
        * A map with a symbol_layer for the number of banks located at that city.
        * A map that includes both the poverty heatmap_layer and the bank symbol_layer.


# Python API Homework - What's the Weather Like?

## Background

Whether financial, political, or social -- data's true power lies in its ability to answer questions definitively. So let's take what you've learned about Python requests, APIs, and JSON traversals to answer a fundamental question: "What's the weather like as we approach the equator?"

Now, we know what you may be thinking: _"Duh. It gets hotter..."_

But, if pressed, how would you **prove** it?

![Equator](Images/equatorsign.png)

### Before You Begin

1. Create a new repository for this project called `python-api-challenge`. **Do not add this homework to an existing repository**.

2. Clone the new repository to your computer.

3. Inside your local git repository, create a directory for the Python API challenge. Use a folder name to correspond to the challenge: **WeatherPy**.

4. Add your Jupyter notebook to this folder. This will be the main script to run for analysis.

5. Push the above changes to GitHub or GitLab.

## WeatherPy

In this example, you'll be creating a Python script to visualize the weather of 500+ cities across the world of varying distance from the equator. To accomplish this, you'll be utilizing a [simple Python library](https://pypi.python.org/pypi/citipy), the [OpenWeatherMap API](https://openweathermap.org/api), and a little common sense to create a representative model of weather across world cities.

Your objective is to build a series of scatter plots to showcase the following relationships:

* Temperature (F) vs. Latitude
* Humidity (%) vs. Latitude
* Cloudiness (%) vs. Latitude
* Wind Speed (mph) vs. Latitude

Your final notebook must:

* Randomly select **at least** 500 unique (non-repeat) cities based on latitude and longitude.
* Perform a weather check on each of the cities using a series of successive API calls.
* Include a print log of each city as it's being processed with the city number and city name.
* Save both a CSV of all data retrieved and png images for each scatter plot.

As final considerations:

* Create a new GitHub repository for this project called `API-Challenge` (note the kebab-case). **Do not add to an existing repo**
* You must complete your analysis using a Jupyter notebook.
* You must use the Matplotlib or Pandas plotting libraries.
* You must include a written description of three observable trends based on the data.
* You must use proper labeling of your plots, including aspects like: Plot Titles (with date of analysis) and Axes Labels.
* See [Example Solution](WeatherPy_Example.pdf) for a reference on expected format.

## Hints and Considerations

* The city data is generated based on random coordinates; as such, your outputs will not be an exact match to the provided starter notebook.

* You may want to start this assignment by refreshing yourself on the [geographic coordinate system](http://desktop.arcgis.com/en/arcmap/10.3/guide-books/map-projections/about-geographic-coordinate-systems.htm).

* Next, spend the requisite time necessary to study the OpenWeatherMap API. Based on your initial study, you should be able to answer  basic questions about the API: Where do you request the API key? Which Weather API in particular will you need? What URL endpoints does it expect? What JSON structure does it respond with? Before you write a line of code, you should be aiming to have a crystal clear understanding of your intended outcome.

* A starter code for Citipy has been provided. However, if you're craving an extra challenge, push yourself to learn how it works: [citipy Python library](https://pypi.python.org/pypi/citipy). Before you try to incorporate the library into your analysis, start by creating simple test cases outside your main script to confirm that you are using it correctly. Too often, when introduced to a new library, students get bogged down by the most minor of errors -- spending hours investigating their entire code -- when, in fact, a simple and focused test would have shown their basic utilization of the library was wrong from the start. Don't let this be you!

* Part of our expectation in this challenge is that you will use critical thinking skills to understand how and why we're recommending the tools we are. What is Citipy for? Why would you use it in conjunction with the OpenWeatherMap API? How would you do so?

* In building your script, pay attention to the cities you are using in your query pool. Are you getting coverage of the full gamut of latitudes and longitudes? Or are you simply choosing 500 cities concentrated in one region of the world? Even if you were a geographic genius, simply rattling 500 cities based on your human selection would create a biased dataset. Be thinking of how you should counter this. (Hint: Consider the full range of latitudes).

* Lastly, remember -- this is a challenging activity. Push yourself! If you complete this task, then you can safely say that you've gained a strong mastery of the core foundations of data analytics and it will only go better from here. Good luck!

### Copyright

Trilogy Education Services © 2019. All Rights Reserved.
