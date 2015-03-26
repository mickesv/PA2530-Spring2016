---
layout: default
title: Learning Outcomes
---
<div class="container">
  <h1>Outcomes <small>in module order</small></h1>
</div>

{% for module in site.morea_module_pages %}
{% if module.morea_coming_soon != true and module.morea_assessments.size > 0 %}
<div class="{% cycle 'section-background-1', 'section-background-2' %}">
  <div class="container">
    <h2><!--<small>Module:</small>--> <a href="{{ site.baseurl }}{{ module.module_page.url }}"><img src="{{ site.baseurl }}{{ module.morea_icon_url }}" width="50" class="img-circle img-responsive morea-img-hover" align="left">&nbsp;{{ module.title }}</a></h2>

    {% for page_id in module.morea_outcomes %}
      {% assign outcome = site.morea_page_table[page_id] %}
      <a style="padding-top: 50px; margin-top: -50px; display: table-caption;" name="{{ outcome.morea_id }}"></a><h3>{{ outcome.title }}</h3>
      <p>
        {% for label in outcome.morea_labels %}
          <span class="badge">{{ label }}</span>
        {% endfor %}
      </p>
      {% unless outcome.morea_referencing_assessments.size == 0 %}
        <p>
        <em>Assessed by:</em>
          {% for ass in outcome.morea_referencing_assessments %}
            <a href="{{ site.baseurl }}/assessments/#{{ ass.morea_id }}">{{ ass.title }}</a>{% unless forloop.last %}, {% endunless %}
          {% endfor %}
        </p>
      {% endunless %}
      {{ outcome.content | markdownify }}
    {% endfor %}
  </div>
</div>
{% endif %}
{% endfor %}


<!--
<div class="container">
  <h1>Learning Outcomes</h1>
</div>

{% if site.morea_outcome_pages.size == 0 %}
<p>No outcomes for this course.</p>
{% endif %}


{% for outcome in site.morea_outcome_pages %}

{% if outcome.referencing_modules.size > 0 %}

<div class="{% cycle 'section-background-1', 'section-background-2' %}">
  <div class="container">
    <a style="padding-top: 50px; margin-top: -50px; display: table-caption;" name="{{ outcome.morea_id }}"></a><h3><small>{{ forloop.index }}.</small> {{ outcome.title }}</h3>
    <p>
      {% for label in outcome.morea_labels %}
         <span class="badge">{{ label }}</span>
      {% endfor %}
    </p>
    {{ outcome.content | markdownify }}
    <p>
    <em>Referencing modules:</em>
    {% for module in outcome.referencing_modules %}
      <a href="../modules/{{ module.morea_id }}">{{ module.title }}</a>{% unless forloop.last %}, {% endunless %}
    {% endfor %}
    </p>
    {% unless outcome.morea_referencing_assessments.size == 0 %}
       <p>
        <em>Assessed by:</em>
        {% for assessment in outcome.morea_referencing_assessments %}
          <a href="../assessments/#{{ assessment.morea_id }}">{{ assessment.title }}</a>{% unless forloop.last %}, {% endunless %}
        {% endfor %}
        </p>
    {% endunless %}

  </div>
</div>

{% endif %}

{% endfor %}


-->