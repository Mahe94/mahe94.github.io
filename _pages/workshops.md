---
layout: page
title: Workshops
permalink: /workshops/
description:
nav: true
nav_order: 6
---

{% assign workshops = site.workshops | sort: "title" %}

{% if workshops.size > 0 %}
<ul>
  {% for workshop in workshops %}
    <li><a href="{{ workshop.url | relative_url }}">{{ workshop.title }}</a></li>
  {% endfor %}
</ul>
{% endif %}
