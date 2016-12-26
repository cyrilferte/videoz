class Film < ApplicationRecord
     include AlgoliaSearch

  algoliasearch do
    attributes :titre, :date, :style, :tags, :link
    
    # the attributesToIndex` setting defines the attributes
    # you want to search in: here `title`, `subtitle` & `description`.
    # You need to list them by order of importance. `description` is tagged as
    # `unordered` to avoid taking the position of a match into account in that attribute.
    attributesToIndex ['titre', 'date', 'style','tags','link']

    # the `customRanking` setting defines the ranking criteria use to compare two matching
    # records in case their text-relevance is equal. It should reflect your record popularity.
    customRanking ['desc(date)']
  end
  
end
