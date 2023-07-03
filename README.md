# Backend Coding Challenge

⚠️ 🔥 Do NOT create a public fork of this!
Invite [swiknaba](https://github.com/swiknaba) to a **private** repo, or upload your code e.g. to Dropbox and send a link along with the application. Thank you!

Thanks so much for your interest in working at with us as a **Senior backend developer**! Below is a challenge we'd like to have you do. The primary purpose of this is to understand how you solve engineering challenges.

**You should spend no more than one hour on this project.**

The goal is, that we get an understanding of how you approach problems rather than you spending a lot of time on this to make it perfect. Please keep the codebase on your machine, we will pair-code on this project in the next step. You getting this app to run on your machine with a very simply part already implemented ensures that we can focus on the interesting parts while pair coding.

## 🔐 The challenge

We are building a mini app to list airports. The UI is ready, but we need to build the backend.

Your challenge is to:

- Create and seed the database
- Seed airports and check that the number reported is correct using Rails console
- Write required routes + endpoint that returns airports
- Add params to return airports only for specific countries
- Build pagination using [`Pagy`](https://ddnexus.github.io/pagy/)
- There are lots of non-relevant (small) airports, make sure the most relevant airports are returned first. Required data is already in the model.
- Add specs to test what you normally would in such an app

We want to build an app by Rails standards with specs. Database search must be fast even if there would be millions of airports.

## 🧠 Assumptions

- Airport model already exists together with code for seeding airports
- Front-end exists, it will use airports endpoint and also provides `countries` parameter

## 📦 Deliverables

As an asynchronous company, this test project will be done asynchronously. Please record your screen and talk us through the coding exercise as you work through it. Don't hesitate to think out loud—that's the interesting part!

Ultimately, it's more important for us to understand your thought process and why you make the decisions you do. You can record & deliver the video in whatever format you prefer: Loom, unlisted YouTube video, …

**Reply to your job application email thread with your solution to the challenge and we'll go from there!**

## ✍️ Next steps

After this coding challenge, we'll review your submission carefully and get back to you with our feedback. If we liked it, we'll reach out to schedule one more additional call with some of your future team members to see if we'd be a great match. If that call goes well, you can expect an offer in your inbox. If you have any additional questions before starting on this coding challenge, don't hesitate to ask!

## 💨 Let's go!

The app is designed to work out of the box with no external dependencies, other than gems and Node modules.

```shell
bundle install

# tested with Node 14 & 16 (Intel and M1 chips)
yarn install
```

### Running locally

Using your favorite process manager (Procodile, Foreman, Overmind, ..) simply run the provided Procfile:

```shell
overmind start -f ./Procfile.dev
````

You can also start backend and frontend separately

#### Frontend

```shell
./bin/webpack-dev-server
```

#### Backend

```shell
bundle exec puma -C config/puma.rb
```

Once started, the app should be available on [localhost](http://localhost:3000).
