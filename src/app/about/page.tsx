"use client";
import Navbar from "@/components/ui/Navbar";
import React from "react";
import Lottie from "lottie-react";
import animationData from "@/animations/lottie3.json";
import Link from "next/link";
import { Tilt } from "react-tilt";
import Footer from "@/components/ui/Footer";

const About = () => {
  return (
    <div className="about-main">
      <Navbar />
      <div className="about-body p-30 mt-36 px-5">
        <h1 className="mainheading mb-20 text-xl md:text-3xl lg:text-6xl font-bold text-center dark:text-blue-300">
          ABOUT US
        </h1>
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-6 dark:text-slate-300 font-medium">
          <div className="about-text font-medium dark:text-gray-300 text-xs md:text-xl text-left">
            <p>
              LogSuite is a cutting-edge Flutter plugin designed to
              revolutionize the way developers monitor and debug their
              applications. With its comprehensive logging capabilities,
              LogSuite captures screenshots, records crash logs, and logs
              network activity seamlessly, making the debugging process
              efficient and straightforward. Built with a focus on functionality
              and correctness, LogSuite follows best architectural practices,
              ensuring a robust and maintainable codebase.
            </p>

            <p className="mt-10">
              LogSuite elevates the debugging process by offering real-time
              insights into app performance. By capturing screenshots at 100ms
              intervals, developers can trace the exact sequence of events
              leading up to an issue. This granular level of detail is
              instrumental in diagnosing and resolving problems swiftly,
              reducing the time spent on troubleshooting and improving overall
              productivity.
            </p>
          </div>
          <Tilt>
            <div className="aboutimg">
              <Lottie animationData={animationData} />
            </div>
          </Tilt>
        </div>

        <div className="about-two mt-36">
          <section
            id="features"
            className="container dark:bg-black dark:text-blue-300 mx-auto px-4 space-y-6 bg-white"
          >
            <div className="mx-auto flex max-w-[58rem] flex-col items-center space-y-4 text-center mb-32 ">
              <h2 className="font-bold text-3xl leading-[1.1] sm:text-3xl md:text-6xl mb-10">
                Features
              </h2>

              <p className="max-w-[85%] leading-normal text-muted-foreground text-xs lg:text-xl sm:leading-7 font-medium dark:text-slate-300 mb-20">
                LogSuite provides comprehensive logging with real-time
                screenshot capture, automatic crash log recording, and detailed
                network activity monitoring to enhance application debugging and
                stability.
              </p>
            </div>

            <div className="mx-auto mt-20 grid justify-center gap-4 sm:grid-cols-2 md:max-w-[64rem] md:grid-cols-3 ">
              <div className="relative overflow-hidden rounded-lg border bg-white select-none hover:shadow hover:shadow-teal-200 p-2 dark:bg-gray-700">
                <div className="flex h-[180px] flex-col justify-between rounded-md p-6">
                  <svg
                    className="w-6 h-6 text-gray-800 dark:text-white"
                    aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    fill="none"
                    viewBox="0 0 24 24"
                  >
                    <path
                      stroke="currentColor"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M4 18V8a1 1 0 0 1 1-1h1.5l1.707-1.707A1 1 0 0 1 8.914 5h6.172a1 1 0 0 1 .707.293L17.5 7H19a1 1 0 0 1 1 1v10a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1Z"
                    />
                    <path
                      stroke="currentColor"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M15 12a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z"
                    />
                  </svg>

                  <div className="space-y-2 mt-5">
                    <h3 className="font-bold dark:text-blue-400">
                      Screenshot Capture
                    </h3>
                    <p className="text-sm dark:text-gray-300 text-muted-foreground mt-5">
                      Automated Capturing: Automatically captures screenshots
                      every 100ms, saving them to device storage.
                    </p>
                  </div>
                </div>
              </div>

              <div className="relative overflow-hidden rounded-lg border bg-white select-none hover:shadow hover:shadow-teal-200 p-2 dark:bg-gray-700">
                <div className="flex h-[180px] flex-col justify-between rounded-md p-6">
                  <svg
                    className="w-6 h-6 text-gray-800 dark:text-white"
                    aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    fill="none"
                    viewBox="0 0 24 24"
                  >
                    <path
                      stroke="currentColor"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="m8 8-4 4 4 4m8 0 4-4-4-4m-2-3-4 14"
                    />
                  </svg>

                  <div className="space-y-2 mt-5 ">
                    <h3 className="font-bold dark:text-blue-400">
                      Crash Log Recording
                    </h3>
                    <p className="text-sm mt-5 dark:text-gray-300">
                      Automated Logging: Captures and records crash logs with
                      all relevant information whenever a crash occurs.
                    </p>
                  </div>
                </div>
              </div>

              <div className="relative overflow-hidden rounded-lg border bg-white select-none dark:bg-gray-700 hover:shadow hover:shadow-teal-200 p-2">
                <div className="flex h-[180px] flex-col justify-between rounded-md p-6">
                  <svg
                    className="w-6 h-6 text-gray-800 dark:text-white"
                    aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    fill="currentColor"
                    viewBox="0 0 24 24"
                  >
                    <path
                      fill-rule="evenodd"
                      d="M8.64 4.737A7.97 7.97 0 0 1 12 4a7.997 7.997 0 0 1 6.933 4.006h-.738c-.65 0-1.177.25-1.177.9 0 .33 0 2.04-2.026 2.008-1.972 0-1.972-1.732-1.972-2.008 0-1.429-.787-1.65-1.752-1.923-.374-.105-.774-.218-1.166-.411-1.004-.497-1.347-1.183-1.461-1.835ZM6 4a10.06 10.06 0 0 0-2.812 3.27A9.956 9.956 0 0 0 2 12c0 5.289 4.106 9.619 9.304 9.976l.054.004a10.12 10.12 0 0 0 1.155.007h.002a10.024 10.024 0 0 0 1.5-.19 9.925 9.925 0 0 0 2.259-.754 10.041 10.041 0 0 0 4.987-5.263A9.917 9.917 0 0 0 22 12a10.025 10.025 0 0 0-.315-2.5A10.001 10.001 0 0 0 12 2a9.964 9.964 0 0 0-6 2Zm13.372 11.113a2.575 2.575 0 0 0-.75-.112h-.217A3.405 3.405 0 0 0 15 18.405v1.014a8.027 8.027 0 0 0 4.372-4.307ZM12.114 20H12A8 8 0 0 1 5.1 7.95c.95.541 1.421 1.537 1.835 2.415.209.441.403.853.637 1.162.54.712 1.063 1.019 1.591 1.328.52.305 1.047.613 1.6 1.316 1.44 1.825 1.419 4.366 1.35 5.828Z"
                      clip-rule="evenodd"
                    />
                  </svg>

                  <div className="space-y-2 mt-5">
                    <h3 className="font-bold dark:text-blue-400">
                      Network Log Capture
                    </h3>
                    <p className="text-sm dark:text-gray-300 text-muted-foreground mt-5">
                      Comprehensive Logging: Intercepts and logs all network
                      requests and responses. Network logs are saved to device
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </section>
        </div>
        <div className="about-three">
          <section className="overflow-hidden mt-20 dark:text-gray-200 bg-white py-8 sm:py-16 dark:bg-black">
            <div className="mx-auto max-w-7xl px-6 lg:px-8">
              <div className="mx-auto grid max-w-2xl grid-cols-1 gap-x-8 gap-y-16 sm:gap-y-20 lg:mx-0 lg:max-w-none lg:grid-cols-2">
                <div className="lg:pr-8 lg:pt-4">
                  <div className="lg:max-w-lg">
                    <p className="mt-5 lg:text-6xl font-bold tracking-tight md:text-3xl text-gray-900 text-xl dark:text-blue-300">
                      Our Mission
                    </p>
                    <p className="mt-10 text-lg leading-8 text-gray-800 dark:text-slate-300 font-medium">
                      At LogSuite, our mission is to empower developers with the
                      essential tools to create flawless applications.
                    </p>
                    <dl className="mt-10 max-w-xl space-y-8 text-base leading-7 text-gray-600 lg:max-w-none">
                      <div className="relative pl-9">
                        <dt className="inline font-semibold text-gray-900">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 20 20"
                            fill="currentColor"
                            aria-hidden="true"
                            className="absolute left-1 top-1 h-5 w-5 text-indigo-600"
                          >
                            <path d="M3.196 12.87l-.825.483a.75.75 0 000 1.294l7.25 4.25a.75.75 0 00.758 0l7.25-4.25a.75.75 0 000-1.294l-.825-.484-5.666 3.322a2.25 2.25 0 01-2.276 0L3.196 12.87z"></path>
                            <path d="M3.196 8.87l-.825.483a.75.75 0 000 1.294l7.25 4.25a.75.75 0 00.758 0l7.25-4.25a.75.75 0 000-1.294l-.825-.484-5.666 3.322a2.25 2.25 0 01-2.276 0L3.196 8.87z"></path>
                            <path d="M10.38 1.103a.75.75 0 00-.76 0l-7.25 4.25a.75.75 0 000 1.294l7.25 4.25a.75.75 0 00.76 0l7.25-4.25a.75.75 0 000-1.294l-7.25-4.25z"></path>
                          </svg>
                        </dt>
                        <dd className="inline font-medium dark:text-slate-300">
                          Provide essential tools to help developers build
                          impeccable applications.
                        </dd>
                      </div>
                      <div className="relative pl-9">
                        <dt className="inline font-semibold text-gray-900">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 20 20"
                            fill="currentColor"
                            aria-hidden="true"
                            className="absolute left-1 top-1 h-5 w-5 text-indigo-600"
                          >
                            <path
                              fillRule="evenodd"
                              d="M5.5 17a4.5 4.5 0 01-1.44-8.765 4.5 4.5 0 018.302-3.046 3.5 3.5 0 014.504 4.272A4 4 0 0115 17H5.5zm3.75-2.75a.75.75 0 001.5 0V9.66l1.95 2.1a.75.75 0 101.1-1.02l-3.25-3.5a.75.75 0 00-1.1 0l-3.25 3.5a.75.75 0 101.1 1.02l1.95-2.1v4.59z"
                              clipRule="evenodd"
                            />
                          </svg>
                        </dt>
                        <dd className="inline dark:text-slate-300 font-medium">
                          Recognize and address the complexities of the
                          debugging process.
                        </dd>
                      </div>
                      <div className="relative pl-9">
                        <dt className="inline font-semibold text-gray-900">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 20 20"
                            fill="currentColor"
                            aria-hidden="true"
                            className="absolute left-1 top-1 h-5 w-5 text-indigo-600"
                          >
                            <path
                              fillRule="evenodd"
                              d="M14.5 10a4.5 4.5 0 004.284-5.882c-.105-.324-.51-.391-.752-.15L15.34 6.66a.454.454 0 01-.493.11 3.01 3.01 0 01-1.618-1.616.455.455 0 01.11-.494l2.694-2.692c.24-.241.174-.647-.15-.752a4.5 4.5 0 00-5.873 4.575c.055.873-.128 1.808-.8 2.368l-7.23 6.024a2.724 2.724 0 103.837 3.837l6.024-7.23c.56-.672 1.495-.855 2.368-.8.096.007.193.01.291.01zM5 16a1 1 0 11-2 0 1 1 0 012 0z"
                              clipRule="evenodd"
                            />
                            <path d="M14.5 11.5c.173 0 .345-.007.514-.022l3.754 3.754a2.5 2.5 0 01-3.536 3.536l-4.41-4.41 2.172-2.607c.052-.063.147-.138.342-.196.202-.06.469-.087.777-.067.128.008.257.012.387.012zM6 4.586l2.33 2.33a.452.452 0 01-.08.09L6.8 8.214 4.586 6H3.309a.5.5 0 01-.447-.276l-1.7-3.402a.5.5 0 01.093-.577l.49-.49a.5.5 0 01.577-.094l3.402 1.7A.5.5 0 016 3.31v1.277z"></path>
                          </svg>
                        </dt>
                        <dd className="inline font-medium dark:text-slate-300">
                          Offer detailed logs and valuable insights to aid in
                          issue identification.
                        </dd>
                      </div>
                      <div className="relative pl-9">
                        <dt className="inline font-semibold text-gray-900">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 20 20"
                            fill="currentColor"
                            aria-hidden="true"
                            className="absolute left-1 top-1 h-5 w-5 text-indigo-600"
                          >
                            <path
                              fillRule="evenodd"
                              d="M14.5 10a4.5 4.5 0 004.284-5.882c-.105-.324-.51-.391-.752-.15L15.34 6.66a.454.454 0 01-.493.11 3.01 3.01 0 01-1.618-1.616.455.455 0 01.11-.494l2.694-2.692c.24-.241.174-.647-.15-.752a4.5 4.5 0 00-5.873 4.575c.055.873-.128 1.808-.8 2.368l-7.23 6.024a2.724 2.724 0 103.837 3.837l6.024-7.23c.56-.672 1.495-.855 2.368-.8.096.007.193.01.291.01zM5 16a1 1 0 11-2 0 1 1 0 012 0z"
                              clipRule="evenodd"
                            />
                            <path d="M14.5 11.5c.173 0 .345-.007.514-.022l3.754 3.754a2.5 2.5 0 01-3.536 3.536l-4.41-4.41 2.172-2.607c.052-.063.147-.138.342-.196.202-.06.469-.087.777-.067.128.008.257.012.387.012zM6 4.586l2.33 2.33a.452.452 0 01-.08.09L6.8 8.214 4.586 6H3.309a.5.5 0 01-.447-.276l-1.7-3.402a.5.5 0 01.093-.577l.49-.49a.5.5 0 01.577-.094l3.402 1.7A.5.5 0 016 3.31v1.277z"></path>
                          </svg>
                        </dt>
                        <dd className="inline font-medium dark:text-slate-300">
                          Streamline the debugging journey, allowing developers
                          to concentrate on innovation and excellence.
                        </dd>
                      </div>
                    </dl>
                  </div>
                  <div className="mt-10 flex items-center gap-x-6">
                    <Link
                      href="https://github.com/avinashkranjan/logsuite"
                      className="rounded-md bg-indigo-600 px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
                    >
                      Start for free
                    </Link>
                  </div>
                </div>
                <img
                  src="https://images.unsplash.com/photo-1498050108023-c5249f4df085?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NzEyNjZ8MHwxfHNlYXJjaHw4fHxjb21wdXRlcnxlbnwwfDB8fHwxNjkxODE2NjY3fDA&ixlib=rb-4.0.3&q=80&w=1080"
                  alt="Product screenshot"
                  className="w-[48rem] max-w-none rounded-xl shadow-xl ring-1 ring-gray-400/10 sm:w-[57rem] md:-ml-4 lg:-ml-0"
                  width={2432}
                  height={1442}
                />
              </div>
            </div>
          </section>
        </div>
        <div className="about-four">
          <section id="testimonies" className="py-20 dark:bg-black bg-white ">
            <div className="max-w-6xl mx-8 md:mx-10 lg:mx-20 xl:mx-auto">
              <div className="transition duration-500 ease-in-out transform scale-100 translate-x-0 translate-y-0 opacity-100">
                <div className="mb-12 space-y-5 md:mb-16 md:text-center">
                  <div className="inline-block px-3 py-1 font-bold text-black rounded-lg md:text-center text-cn text-sm md:text-3xl lg:text-5xl bg-opacity-60 dark:text-slate-200 hover:cursor-pointer hover:bg-opacity-40">
                    Testimonials
                  </div>
                  <h1 className="mb-5 text-sm md:text-xl font-semibold text-black dark:text-slate-300 md:text-center text-center lg:text-3xl">
                    Words from others
                  </h1>
                </div>
              </div>
              <div className="grid grid-cols-1 gap-6 sm:grid-cols-2 lg:grid-cols-3 lg:gap-8">
                <ul className="space-y-8">
                  <li className="text-sm leading-6">
                    <div className="relative group">
                      <div className="absolute transition rounded-lg opacity-25 -inset-1 bg-gradient-to-r from-purple-600 to-pink-600 blur duration-400 group-hover:opacity-100 group-hover:duration-200"></div>
                      <a
                        href="https://twitter.com/kanyewest"
                        className="cursor-pointer"
                      >
                        <div className="relative p-6 space-y-6 leading-none rounded-lg bg-slate-800 ring-1 ring-gray-900/5">
                          <div className="flex items-center space-x-4">
                            <img
                              src="https://pbs.twimg.com/profile_images/1276461929934942210/cqNhNk6v_400x400.jpg"
                              className="w-12 h-12 bg-center bg-cover border rounded-full"
                              alt="Kanye West"
                            />
                            <div>
                              <h3 className="text-lg font-semibold text-white">
                                Kanye West
                              </h3>
                              <p className="text-gray-500 text-md">
                                Rapper &amp; Entrepreneur
                              </p>
                            </div>
                          </div>
                          <p className="leading-normal text-gray-300 text-md">
                            The crash log recording in LogSuite is top-notch. It
                            captures all the relevant information I need to fix
                            bugs quickly
                          </p>
                        </div>
                      </a>
                    </div>
                  </li>
                  <li className="text-sm leading-6">
                    <div className="relative group">
                      <div className="absolute transition rounded-lg opacity-25 -inset-1 bg-gradient-to-r from-purple-600 to-pink-600 blur duration-400 group-hover:opacity-100 group-hover:duration-200"></div>
                      <a
                        href="https://twitter.com/tim_cook"
                        className="cursor-pointer"
                      >
                        <div className="relative p-6 space-y-6 leading-none rounded-lg bg-slate-800 ring-1 ring-gray-900/5">
                          <div className="flex items-center space-x-4">
                            <img
                              src="https://pbs.twimg.com/profile_images/1535420431766671360/Pwq-1eJc_400x400.jpg"
                              className="w-12 h-12 bg-center bg-cover border rounded-full"
                              alt="Tim Cook"
                            />
                            <div>
                              <h3 className="text-lg font-semibold text-white">
                                Tim Cook
                              </h3>
                              <p className="text-gray-500 text-md">
                                CEO of Apple
                              </p>
                            </div>
                          </div>
                          <p className="leading-normal text-gray-300 text-md">
                            LogSuite is an absolute game-changer! The screenshot
                            capture feature helps me identify UI issues quickly,
                            making debugging so much easier
                          </p>
                        </div>
                      </a>
                    </div>
                  </li>
                  <li className="text-sm leading-6">
                    <div className="relative group">
                      <div className="absolute transition rounded-lg opacity-25 -inset-1 bg-gradient-to-r from-purple-600 to-pink-600 blur duration-400 group-hover:opacity-100 group-hover:duration-200"></div>
                      <a
                        href="https://twitter.com/kanyewest"
                        className="cursor-pointer"
                      >
                        <div className="relative p-6 space-y-6 leading-none rounded-lg bg-slate-800 ring-1 ring-gray-900/5">
                          <div className="flex items-center space-x-4">
                            <img
                              src="https://pbs.twimg.com/profile_images/1276461929934942210/cqNhNk6v_400x400.jpg"
                              className="w-12 h-12 bg-center bg-cover border rounded-full"
                              alt="Kanye West"
                            />
                            <div>
                              <h3 className="text-lg font-semibold text-white">
                                Kanye West
                              </h3>
                              <p className="text-gray-500 text-md">
                                Rapper &amp; Entrepreneur
                              </p>
                            </div>
                          </div>
                          <p className="leading-normal text-gray-300 text-md">
                            With LogSuite, I can monitor and debug my
                            applications efficiently. It's a must-have plugin
                            for Flutter developers
                          </p>
                        </div>
                      </a>
                    </div>
                  </li>
                  <li className="text-sm leading-6">
                    <div className="relative group">
                      <div className="absolute transition rounded-lg opacity-25 -inset-1 bg-gradient-to-r from-purple-600 to-pink-600 blur duration-400 group-hover:opacity-100 group-hover:duration-200"></div>
                      <a
                        href="https://twitter.com/tim_cook"
                        className="cursor-pointer"
                      >
                        <div className="relative p-6 space-y-6 leading-none rounded-lg bg-slate-800 ring-1 ring-gray-900/5">
                          <div className="flex items-center space-x-4">
                            <img
                              src="https://pbs.twimg.com/profile_images/1535420431766671360/Pwq-1eJc_400x400.jpg"
                              className="w-12 h-12 bg-center bg-cover border rounded-full"
                              alt="Tim Cook"
                            />
                            <div>
                              <h3 className="text-lg font-semibold text-white">
                                Tim Cook
                              </h3>
                              <p className="text-gray-500 text-md">
                                CEO of Apple
                              </p>
                            </div>
                          </div>
                          <p className="leading-normal text-gray-300 text-md">
                            With LogSuite, I can monitor network activity in
                            real-time. It's invaluable for tracking down and
                            fixing API issues
                          </p>
                        </div>
                      </a>
                    </div>
                  </li>
                </ul>
                <ul className="hidden space-y-8 sm:block">
                  <li className="text-sm leading-6">
                    <div className="relative group">
                      <div className="absolute transition rounded-lg opacity-25 -inset-1 bg-gradient-to-r from-purple-600 to-pink-600 blur duration-400 group-hover:opacity-100 group-hover:duration-200"></div>
                      <a
                        href="https://twitter.com/paraga"
                        className="cursor-pointer"
                      >
                        <div className="relative p-6 space-y-6 leading-none rounded-lg bg-slate-800 ring-1 ring-gray-900/5">
                          <div className="flex items-center space-x-4">
                            <img
                              src="https://pbs.twimg.com/profile_images/1375285353146327052/y6jeByyD_400x400.jpg"
                              className="w-12 h-12 bg-center bg-cover border rounded-full"
                              alt="Parag Agrawal"
                            />
                            <div>
                              <h3 className="text-lg font-semibold text-white">
                                Parag Agrawal
                              </h3>
                              <p className="text-gray-500 text-md">
                                CEO of Twitter
                              </p>
                            </div>
                          </div>
                          <p className="leading-normal text-gray-300 text-md">
                            The crash log recording feature of LogSuite has
                            saved me countless hours. I can easily pinpoint the
                            exact moment something goes wrong
                          </p>
                        </div>
                      </a>
                    </div>
                  </li>
                  <li className="text-sm leading-6">
                    <div className="relative group">
                      <div className="absolute transition rounded-lg opacity-25 -inset-1 bg-gradient-to-r from-purple-600 to-pink-600 blur duration-400 group-hover:opacity-100 group-hover:duration-200"></div>
                      <a
                        href="https://twitter.com/tim_cook"
                        className="cursor-pointer"
                      >
                        <div className="relative p-6 space-y-6 leading-none rounded-lg bg-slate-800 ring-1 ring-gray-900/5">
                          <div className="flex items-center space-x-4">
                            <img
                              src="https://pbs.twimg.com/profile_images/1535420431766671360/Pwq-1eJc_400x400.jpg"
                              className="w-12 h-12 bg-center bg-cover border rounded-full"
                              alt="Tim Cook"
                            />
                            <div>
                              <h3 className="text-lg font-semibold text-white">
                                Tim Cook
                              </h3>
                              <p className="text-gray-500 text-md">
                                CEO of Apple
                              </p>
                            </div>
                          </div>
                          <p className="leading-normal text-gray-300 text-md">
                            LogSuite's modular architecture and clean codebase
                            make it a joy to work with. It's the best logging
                            plugin I've used
                          </p>
                        </div>
                      </a>
                    </div>
                  </li>
                  <li className="text-sm leading-6">
                    <div className="relative group">
                      <div className="absolute transition rounded-lg opacity-25 -inset-1 bg-gradient-to-r from-purple-600 to-pink-600 blur duration-400 group-hover:opacity-100 group-hover:duration-200"></div>
                      <a
                        href="https://twitter.com/paraga"
                        className="cursor-pointer"
                      >
                        <div className="relative p-6 space-y-6 leading-none rounded-lg bg-slate-800 ring-1 ring-gray-900/5">
                          <div className="flex items-center space-x-4">
                            <img
                              src="https://pbs.twimg.com/profile_images/1375285353146327052/y6jeByyD_400x400.jpg"
                              className="w-12 h-12 bg-center bg-cover border rounded-full"
                              alt="Parag Agrawal"
                            />
                            <div>
                              <h3 className="text-lg font-semibold text-white">
                                Parag Agrawal
                              </h3>
                              <p className="text-gray-500 text-md">
                                CEO of Twitter
                              </p>
                            </div>
                          </div>
                          <p className="leading-normal text-gray-300 text-md">
                            Capturing screenshots every 100ms is a brilliant
                            idea. It gives me a detailed timeline of what
                            happened before a crash.
                          </p>
                        </div>
                      </a>
                    </div>
                  </li>
                  <li className="text-sm leading-6">
                    <div className="relative group">
                      <div className="absolute transition rounded-lg opacity-25 -inset-1 bg-gradient-to-r from-purple-600 to-pink-600 blur duration-400 group-hover:opacity-100 group-hover:duration-200"></div>
                      <a
                        href="https://twitter.com/tim_cook"
                        className="cursor-pointer"
                      >
                        <div className="relative p-6 space-y-6 leading-none rounded-lg bg-slate-800 ring-1 ring-gray-900/5">
                          <div className="flex items-center space-x-4">
                            <img
                              src="https://pbs.twimg.com/profile_images/1535420431766671360/Pwq-1eJc_400x400.jpg"
                              className="w-12 h-12 bg-center bg-cover border rounded-full"
                              alt="Tim Cook"
                            />
                            <div>
                              <h3 className="text-lg font-semibold text-white">
                                Tim Cook
                              </h3>
                              <p className="text-gray-500 text-md">
                                CEO of Apple
                              </p>
                            </div>
                          </div>
                          <p className="leading-normal text-gray-300 text-md">
                            LogSuite's ability to log network requests and
                            responses is fantastic. It makes debugging network
                            issues so much simpler
                          </p>
                        </div>
                      </a>
                    </div>
                  </li>
                </ul>
                <ul className="hidden space-y-8 lg:block">
                  <li className="text-sm leading-6">
                    <div className="relative group">
                      <div className="absolute transition rounded-lg opacity-25 -inset-1 bg-gradient-to-r from-purple-600 to-pink-600 blur duration-400 group-hover:opacity-100 group-hover:duration-200"></div>
                      <a
                        href="https://twitter.com/satyanadella"
                        className="cursor-pointer"
                      >
                        <div className="relative p-6 space-y-6 leading-none rounded-lg bg-slate-800 ring-1 ring-gray-900/5">
                          <div className="flex items-center space-x-4">
                            <img
                              src="https://pbs.twimg.com/profile_images/1221837516816306177/_Ld4un5A_400x400.jpg"
                              className="w-12 h-12 bg-center bg-cover border rounded-full"
                              alt="Satya Nadella"
                            />
                            <div>
                              <h3 className="text-lg font-semibold text-white">
                                Satya Nadella
                              </h3>
                              <p className="text-gray-500 text-md">
                                CEO of Microsoft
                              </p>
                            </div>
                          </div>
                          <p className="leading-normal text-gray-300 text-md">
                            I love how LogSuite automatically captures crash
                            logs. It has made my apps much more stable
                          </p>
                        </div>
                      </a>
                    </div>
                  </li>
                  <li className="text-sm leading-6">
                    <div className="relative group">
                      <div className="absolute transition rounded-lg opacity-25 -inset-1 bg-gradient-to-r from-purple-600 to-pink-600 blur duration-400 group-hover:opacity-100 group-hover:duration-200"></div>
                      <a
                        href="https://twitter.com/dan_schulman"
                        className="cursor-pointer"
                      >
                        <div className="relative p-6 space-y-6 leading-none rounded-lg bg-slate-800 ring-1 ring-gray-900/5">
                          <div className="flex items-center space-x-4">
                            <img
                              src="https://pbs.twimg.com/profile_images/516916920482672641/3jCeLgFb_400x400.jpeg"
                              className="w-12 h-12 bg-center bg-cover border rounded-full"
                              alt="Dan Schulman"
                            />
                            <div>
                              <h3 className="text-lg font-semibold text-white">
                                Dan Schulman
                              </h3>
                              <p className="text-gray-500 text-md">
                                CEO of PayPal
                              </p>
                            </div>
                          </div>
                          <p className="leading-normal text-gray-300 text-md">
                            Using LogSuite has significantly improved my
                            development workflow. I can identify and fix issues
                            much faster now
                          </p>
                        </div>
                      </a>
                    </div>
                  </li>
                  <li className="text-sm leading-6">
                    <div className="relative group">
                      <div className="absolute transition rounded-lg opacity-25 -inset-1 bg-gradient-to-r from-purple-600 to-pink-600 blur duration-400 group-hover:opacity-100 group-hover:duration-200"></div>
                      <a
                        href="https://twitter.com/satyanadella"
                        className="cursor-pointer"
                      >
                        <div className="relative p-6 space-y-6 leading-none rounded-lg bg-slate-800 ring-1 ring-gray-900/5">
                          <div className="flex items-center space-x-4">
                            <img
                              src="https://pbs.twimg.com/profile_images/1221837516816306177/_Ld4un5A_400x400.jpg"
                              className="w-12 h-12 bg-center bg-cover border rounded-full"
                              alt="Satya Nadella"
                            />
                            <div>
                              <h3 className="text-lg font-semibold text-white">
                                Satya Nadella
                              </h3>
                              <p className="text-gray-500 text-md">
                                CEO of Microsoft
                              </p>
                            </div>
                          </div>
                          <p className="leading-normal text-gray-300 text-md">
                            LogSuite's screenshot capture feature is inspired by
                            the best. It's like having a visual history of my
                            app's state.
                          </p>
                        </div>
                      </a>
                    </div>
                  </li>
                  <li className="text-sm leading-6">
                    <div className="relative group">
                      <div className="absolute transition rounded-lg opacity-25 -inset-1 bg-gradient-to-r from-purple-600 to-pink-600 blur duration-400 group-hover:opacity-100 group-hover:duration-200"></div>
                      <a
                        href="https://twitter.com/dan_schulman"
                        className="cursor-pointer"
                      >
                        <div className="relative p-6 space-y-6 leading-none rounded-lg bg-slate-800 ring-1 ring-gray-900/5">
                          <div className="flex items-center space-x-4">
                            <img
                              src="https://pbs.twimg.com/profile_images/516916920482672641/3jCeLgFb_400x400.jpeg"
                              className="w-12 h-12 bg-center bg-cover border rounded-full"
                              alt="Dan Schulman"
                            />
                            <div>
                              <h3 className="text-lg font-semibold text-white">
                                Dan Schulman
                              </h3>
                              <p className="text-gray-500 text-md">
                                CEO of PayPal
                              </p>
                            </div>
                          </div>
                          <p className="leading-normal text-gray-300 text-md">
                            LogSuite's network log capture feature is incredibly
                            useful. I can see exactly what's going on with my
                            API calls
                          </p>
                        </div>
                      </a>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </section>
        </div>
      </div>
      <Footer />
    </div>
  );
};

export default About;
