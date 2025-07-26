import React, { Component } from 'react';

class Posts extends Component {
  constructor(props) {
    super(props);
    this.state = {
      posts: [],
      hasError: false
    };
  }
  loadPosts() {
    fetch("https://jsonplaceholder.typicode.com/posts")
      .then(res => res.json())
      .then(data => this.setState({ posts: data }))
      .catch(error => {
        console.error("Error fetching posts:", error);
        this.setState({ hasError: true });
      });
  }
  componentDidMount() {
    this.loadPosts();
  }
  componentDidCatch(error, info) {
    alert("An error occurred: " + error);
    this.setState({ hasError: true });
  }
  render() {
    if (this.state.hasError) {
      return <h2 style={{ color: 'red' }}>Something went wrong.</h2>;
    }
    return (
      <div style={{ padding: '20px' }}>
        <h1>Blog Posts</h1>
        {this.state.posts.slice(0, 10).map(post => (
          <div key={post.id} style={{ marginBottom: '20px' }}>
            <h2>{post.title}</h2>
            <p>{post.body}</p>
            <hr />
          </div>
        ))}
      </div>
    );
  }
}
export default Posts;