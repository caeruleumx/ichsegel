---
title: "Posts by Year"
permalink: /year-archive/
layout: posts
author_profile: true
---

{% for post in site.pages %}
  {% include archive-single.html %}
{% endfor %}