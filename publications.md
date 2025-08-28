---
layout: page
title: Publications
description: Academic publication list for Sam D. Buchanan
permalink: /publications/
years: [2025, 2024, 2023, 2022, 2021, 2019, 2018]
---

<div class="publications">

{% for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f refs -q @*[year={{y}} && exclude!=true]* %}
{% endfor %}

</div>
