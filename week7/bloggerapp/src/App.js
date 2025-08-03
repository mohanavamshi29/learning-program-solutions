import React, { useState } from 'react';
import { books, courses, blogs } from './data';
import BookDetails from './BookDetails';
import CourseDetails from './CourseDetails';
import BlogDetails from './BlogDetails';

function App() {
  const [showAll, setShowAll] = useState(true);

  return (
    <div style={{ display: 'flex', justifyContent: 'space-evenly', padding: '40px' }}>
      {showAll && (
        <>
          <div style={{ borderRight: '3px solid green', paddingRight: '20px' }}>
            <CourseDetails courses={courses} />
          </div>
          <div style={{ borderRight: '3px solid green', paddingRight: '20px', paddingLeft: '20px' }}>
            <BookDetails books={books} />
          </div>
          <div style={{ paddingLeft: '20px' }}>
            <BlogDetails blogs={blogs} />
          </div>
        </>
      )}
    </div>
  );
}

export default App;
