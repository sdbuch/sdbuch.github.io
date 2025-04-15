---
layout: page
title: Blog
permalink: /blog/
---

<div class="blog-posts">
  {% for post in site.posts %}
    <article class="post">
      <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
      <div class="post-meta">{{ post.date | date: "%B %-d, %Y" }}</div>
      <div class="post-excerpt">
        {{ post.excerpt }}
        <a href="{{ post.url | relative_url }}">Read more...</a>
      </div>
    </article>
  {% endfor %}
</div>
