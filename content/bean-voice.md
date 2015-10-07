---
layout: page
title: Bean Guide Voice and Tone
nickname: Bean Voice
group: navigation
---
{% include JB/setup %}

## Introduction

This style guide describes the organization and writing style used for LightBlue Bean user guides. This includes:

* The Getting Started guide
* Bean and Bean+ feature walkthroughs
* Other domains, such as Bean SDKs, accessories, Grove, and Node-RED

## Philosophy

This philosophy gives us purpose for writing documentation. It's the theme, or the "so what?" of our docs. It is the "why" that helps us define the "how".

### Write for Our Users

We build quality products for smart people. Members of the LightBlue Bean community have proven they're smart, motivated, and creative. They're makers at heart, they love to build cool stuff, and they are excited about making.

Beanies are the people who post on our Beantalk community forums. They spend their time contributing to the community and helping others learn about Arduino and Bean. They spread the word about Bean and get other makers excited about building projects with BLE.

We've heard great things from our users. One customer told us that the Bean is one of their favorite tools for a hackathon. They mentioned that newbies got the Bean to blink in under five minutes. This is exactly what we want to hear from our users—they love the Bean and introduce their friends to it.

### Write to Reduce Friction

The LightBlue Bean is an awesome piece of hardware. It's tiny, battery-powered, and wireless! There are tons of cool features to use and combine. But sometimes the Bean can be hard to use. Complex features and the perils of wireless communication can make using Bean a frustrating experience.

The Bean experience should be painless for users. If someone walks away from Bean in frustration, then we're not doing our job. We need to make sure we're making Bean easy to use for both newbies and experienced hardware hackers.

### Write for Everyone

Our users vary widely in experience. Some of our users have never heard of Arduino, while others are professional embedded engineers. We need to serve all audiences and make sure we aren't catering to one group at the expense of another.

### Write for Fun!

Punch Through is a fun company to work for and work with. We pride ourselves on doing a top-notch job while still having fun with skateboards and Nerf guns. Unlike some bigger tech companies, it isn't just for show. We actually do have fun, and we should let that show through in everything we do.

## Organization

There are three main sections of our guides:

1. Getting Started
2. Feature Walkthrough
3. Everything else

### Our Docs are a Cookbook, Everything Inside is a Recipe

> **recipe,** *n.* : a set of instructions for making something

Recipes are an excellent way to structure information so that it is accessible to newbies. Advanced users should be able to skip the sections of the recipe with which they're already familiar.

### Getting Started

Write the Getting Started section with new Bean users in mind. Expect that these users are unboxing the Bean for the first time and do not know how to get started with their shiny new toy.

It is OK to discuss the very basics that new Makers will need to understand Bean properly. This includes stuff like Bluetooth Low Energy, the lithium battery, the Bean's various peripherals, and the system architecture. It's OK to link to external resources to help users learn more about these technologies. Expect experienced hackers to skip these sections.

### Feature Walkthrough

Feature Walkthroughs are like Getting Started guides, except:

* **Their scope is smaller.** Features Walkthroughs only have to cover one feature, while Getting Started guides have to cover more ground.
* **They explain less background.** Readers of Feature Walkthroughs should have already gone through the Getting Started guides, so we won't need to repeat those explanations.

The structure of a recipe describing a Bean feature might look like this:

* Introduction
* What You Need
* Step-by-Step
* Conclusion
* Troubleshooting
* Additional Notes

#### Introduction

The introduction is a brief description of the feature and this recipe.

* One line: What is this feature?
* Two to four lines: What kinds of things could the user do with this feature?
* One line: What will this recipe teach the user?

#### What You Need

This is a list of the materials the user needs to complete this recipe. This could include:

* Experience with a skill
* Physical hardware
* Software

New users might stumble into the feature walkthroughs without finishing the Getting Started guides. These walkthroughs should gently guide users back to the Getting Started guides if they haven't finished them yet.

If the user needs to put something together to complete the recipe, the recipe should either:

* Teach them how to do it, or 
* Link them to somewhere else in our docs that teaches them how to do it, or
* Link them to somewhere off-site that teaches them how to do it

(preferred in that order.)

#### Step-by-Step

This should be a complete, thorough series of steps that describes how to complete the recipe.

The step-by-step should include **everything** the user needs to complete the recipe. This includes:

* Code snippets
* Photos and/or diagrams of any hardware or schematics
* Guidance on project layout and configuration
* Links to necessary libraries
* A downloadable completed project archive at the end

#### Conclusion

The conclusion should recap what the recipe just taught. It should give the user a way to verify that they completed the recipe correctly.

#### Troubleshooting

Sometimes things go wrong. If there are any problems that might arise that are specific to this recipe, describe them here along with steps to try resolving the problems. It's OK to link to other troubleshooting sections or websites if the problem is not specific to this recipe.

#### Additional Notes

If there is additional information that does not fit elsewhere in the recipe, it can go here. This is similar to a textbook's appendix. It holds stuff that isn't strictly required to complete the recipe, but might be useful for further learning.

### Everything Else

This section are for things that aren't **specifically:**

* Getting Started guides
* Feature walkthroughs

This includes things like:

* Guides for Bean SDKs for individual platforms
* Guides for using accessories
* Introduction to Grove and Bean+
* Node-RED + Bean + Raspberry Pi

Structure these guides like Feature Walkthroughs. They might have increased scope and require more background, so it's OK to include more information.

### Deep Documentation

Sometimes we'll run into areas where we mention a complex topic, but don't want to explain it completely in the guide. Examples of this include:

* A Getting Started guide mentioning how the Bean speaks Serial over GATT
* The iBeacon guide discussing the structure of a BLE advertising packet
* The MIDI guide describing how MIDI packets look and work

These topics are most likely discussed in-depth somewhere else on the internet. It is OK to mention deeper topics inline in a guide, but link offsite so the user can learn more about the topic on their own time. If you do this, the guide MUST STILL provide sufficient documentation to complete the recipe without complete knowledge of this topic.

## Voice and Tone

If we don't think about a user's emotional state when we write content for them, we might be boring a user who's excited to learn with dry reference content. Or we might be making an annoyed user angry by blaming the their problems on them. The voice and tone we use when writing documentation has an effect on our users, and we need to consider how users feel when we write content.

### Strive to Be Fun

Punch Through's company culture is professional and fun, and that should show through when users read our documentation.

When we write guides, we should encourage the user and let them know they're doing a good job.

Being clever and creative is great! If you write an example app for an iOS device, don't make it **My Todo Tracker**—everyone's seen a todo list app. Why not build **My Monkey Manager** for wrangling the collection of apes at your zoo instead?

### Celebrate Success...

When a user completes a guide, it's a time for celebration. They just did something difficult for the first time! Show them what they've accomplished. Give them ideas for what they could build in the future with their newfound skills.

Example:

> Nice work! You've just programmed your Bean to act as an iBeacon that's triggered by sound. You built an iPhone app that notifies you when it detects the Bean's iBeacon. Now you'll get notifications when someone claps twice near your Bean.
>
> Here are some other ideas for projects you could build with iBeacon: [...]


### ...But Prepare for Failure

Electronics are complicated. Computers are hard. Stuff goes wrong. Write docs with the expectation that Murphy himself is trying (and failing) to finish one of our guides.

We should NEVER blame the user when something goes wrong. **It is never the user's fault.** If something's wrong, we should be able to guide the user through the problem. User frustration is our problem, not theirs.

Don't do this:

> Is your Bean not responding? Your battery is probably dead, or you put it in the wrong way.

Instead, do this:

> Is your Bean not responding? Check to make sure the battery is inserted properly. You can use the LED on Bean to verify that the battery is charged.

## Language

### Readability

Write in a clear and concise manner. Guides should not be overly wordy. Colin isn't paying us by the word yet, so keep your sentences short and sweet.

Aim for a college-level reading level at most (Grade 13 to 16). Less is usually better. Use [Hemingway App](http://www.hemingwayapp.com/) to check your content's readability score.

### Voice

Use the active voice and avoid passive constructions. Use imperative sentences (commands, like "Do this" or "Try this").

Don't do this:

> Your Bean+ can be turned on by flipping the power switch.

Instead, do this:

> Turn your Bean+ on by flipping the power switch.

### Grammar

Use the Oxford comma. No ifs, ands, or buts about it.

These guides are primarily technical documentation, so use the "number-y" numbers instead of spelling out the words for numbers. Use "8" instead of "eight".

### Terminology

The following items are core to our brand and should be written consistently in caps and spelling:

* Bean
* Bean+
* LightBlue Bean
* LightBlue Bean+
* LightBlue Explorer
* LightBlue Platform
* Punch Through

The name Punch Through is what we're using for branding purposes. Avoid using Punch Through Design unless you're discussing a legal topic.

For example: *Copyright 2015 Punch Through Design* should use the full company name.

### Addressing the User

#### You and We

Use "we" to describe employees of Punch Through as a collective unit, and "you" to describe the user reading the guide.

Don't use "I" or "The user...".

Don't do this:

> Punch Through built the Bean to make BLE development fun and easy.
>
> The user should open their Bean Loader App now.

Instead, do this:

> We built the Bean to make BLE development fun and easy.
>
> Open your Bean Loader App.

#### Third Parties and Pronouns

Avoid referring to third parties if possible. If it's necessary to refer to third parties, avoid using gendered pronouns.

Don't do this:

> Someone using iBeacon for the first time has lots of options. He can use iBeacon as a way to...

This is a better option:

> Someone using iBeacon for the first time has lots of options. They can use iBeacon as a way to...

Instead, do this:

> If you are using iBeacon for the first time, you have lots of options. You can use iBeacon as a way to...

## Formatting

### Code Font

Code font looks like this: `Refinery::Users.all`, `0xB33B`, `#define FALSE 1`.

Write stuff in code font by using \`backticks\`.

Use code font whenever writing ANYTHING that will make its way into code. This includes:

* Symbols
* Variable names
* Numbers, constants and values
* Strings

Code blocks look like this:

```cpp
void loop() {
  if (mode == 0) {
    setFromRandomFade();
  } else if (mode == 1) {
    setFromRainbow();
  } else if (mode == 2) {
    setFromSandbox();
  } else {
    setPixels(0, 0, 0);  // Turn them off!
  }
}
```

### Code Blocks

Use code blocks when you write large sections of code. This makes it easy for users to copy and paste or retype code into their own project.

Write stuff in code blocks by using \`\`\` code fences \`\`\`:

    ```cpp
    void loop() {
      // Your code here
    }
    ```

(In the above example, `cpp` adds C++ formatting to the code block.)
