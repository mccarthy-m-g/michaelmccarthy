---
title: Experience
author: Michael McCarthy
description: |
  This page is a work in progress
  
last_revised: Work in progress
show_social_links: true

# for list-sidebar layout
sidebar: 
  title: Hi, my name is Michael. Nice to meet you.
  description: |
    This sidebar is a work in progress.
  author: 
  text_link_label: Contact
  text_link_url: /contact/
  show_sidebar_adunit: false # show ad container

type: experience
layout: list-sidebar
---

<!--
TODO: Decide on the layout for CV items using Tachyons CSS. Once this is
decided then I can create R functions that take a data frame of CV items
as input, and output the correct HTML/CSS code for each item upon knitting.
This is what the {vitae} package does, except it is mainly for PDF output and
doesn't play nice with blogdown. I should use the htmltools package for my
own functions.
-->

<!-- TODO: Decide vertical spacing -->
<section class="bt mb4">
  <header class="w-100">
    <h5 class="f4 fw7 tracked ttu lh-title mv3">Education</h5>
  </header>
  <!-- Item 1 -->
  <div class="cf mv4">
    <div class="fl w-100 w-third-ns">
      <p class="mb0 mv2-ns">September 2020 – Present</p>
    </div>
    <div class="fl w-100 w-two-thirds-ns pl2-ns">
      <p class="mv2 b">Master of Science, Psychology (Brain and Cognitive Science)</p>
      <p class="di">University of Calgary</p>
      <p class="di">&middot</p>
      <p class="di">Calgary AB, Canada</p>
      <!-- Bullet points -->
      <ul class="cf pl3 mv2">
        <li class="fl w-100 mv1">
          <p class="fl w-100 w-30-ns mv0">Thesis title:</p>
          <p class="fl w-100 w-70-ns mv0">Individual differences in EEG connectomes</p>
        </li>
        <li class="fl w-100 mv1">
          <p class="fl w-100 w-30-ns mv0">Advisor:</p>
          <p class="fl w-100 w-70-ns mv0">Dr. Andrea Protzner</p>
        </li>
      </ul>
    </div>
  </div>
  <!-- Item 2 -->
  <div class="cf mv4">
    <div class="fl w-100 w-third-ns">
      <p class="mb0 mv2-ns">June 2019</p>
    </div>
    <div class="fl w-100 w-two-thirds-ns pl2-ns">
      <p class="mv2 b">York CVR-VISTA Vision Science Summer School</p>
      <p class="di">York University</p>
      <p class="di">&middot</p>
      <p class="di">Toronto ON, Canada</p>
    </div>
  </div>
  <!-- Item 3 -->
  <div class="cf mv4">
    <div class="fl w-100 w-third-ns">
      <p class="mb0 mv2-ns">April 2019</p>
    </div>
    <div class="fl w-100 w-two-thirds-ns pl2-ns">
      <p class="mv2 b">Bachelor of Arts, Honours Psychology and Communications</p>
      <p class="di">University of the Fraser Valley</p>
      <p class="di">&middot</p>
      <p class="di">Abbotsford BC, Canada</p>
      <!-- Bullet points -->
      <ul class="cf pl3 mv2">
        <li class="fl w-100 mv1">
          <p class="fl w-100 w-30-ns mv0">Thesis title:</p>
          <p class="fl w-100 w-70-ns mv0">Valenced perceptual cues have no effect on Implicit Association Test performance</p>
        </li>
        <li class="fl w-100 mv1">
          <p class="fl w-100 w-30-ns mv0">Advisor:</p>
          <p class="fl w-100 w-70-ns mv0">Dr. Andrea Hughes</p>
        </li>
      </ul>
    </div>
  </div>
  <!-- Item 4 -->
  <div class="cf mv4">
    <div class="fl w-100 w-third-ns">
      <p class="mb0 mv2-ns">December 2015</p>
    </div>
    <div class="fl w-100 w-two-thirds-ns pl2-ns">
      <p class="mv2 b">Professional Communication Essentials Certificate</p>
      <p class="di">University of the Fraser Valley</p>
      <p class="di">&middot</p>
      <p class="di">Abbotsford BC, Canada</p>
    </div>
  </div>
</section>

<!--
__Master of Science, Psychology (Brain and Cognitive Science)__  
University of Calgary  
September 2020 – Present Calgary AB, Canada

__York CVR – VISTA Vision Science Summer School__  
York University 
Jun 2019 – Jun 2019  
Toronto ON, Canada


***

## Awards

__Alberta Graduate Excellence Scholarship (AGES)__  
Alberta Student Aid  
August 2020 – August 2021  
Amount: $11,000
-->
