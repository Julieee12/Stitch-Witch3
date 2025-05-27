abstract class AbstractSearchable<T> {
  /*
  Classes implementing this abstraction should
  take in a String search query, and return this object
  if itself determines it qualifies the query.
  It should return null otherwise, to signify it doesn't
  qualify the search query.
   */
  T search(String query);
}