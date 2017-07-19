import ReactOnRails from 'react-on-rails';

import BookForm from '../Book/components/BookForm';
import Books from '../Book/components/Books';
import Book from '../Book/components/Book';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  Books,
  Book,
});
