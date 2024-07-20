"use client";

import Link from "next/link";
import Image from "next/image";
import { useState } from "react";
import { ModeToggle } from "../mode-toggle-button";

const Navbar = () => {
  const [isOpen, setIsOpen] = useState(false);

  return (
    <nav className="bg-white bg-opacity-20 fixed w-full z-20 top-0 start-0 border-b border-gray-200 dark:border-none dark:bg-opacity-10 backdrop-filter dark:backdrop-filter dark:backdrop-blur-lg backdrop-blur-lg">
      <div className="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
        <Link
          href="/"
          className="flex items-center space-x-3 rtl:space-x-reverse"
        >
          {/* <Image
            src="https://flowbite.com/docs/images/logo.svg"
            className="h-8"
            alt="Flowbite Logo"
            width={32}
            height={32}
          /> */}
          <span className="self-center text-2xl font-semibold whitespace-nowrap dark:text-white">
            LogSuite
          </span>
        </Link>
        <div className="flex md:order-2 space-x-3 md:space-x-0 rtl:space-x-reverse">
          <button
            type="button"
            className="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
          >
            Sign Up/Login
          </button>

          <button
            onClick={() => setIsOpen(!isOpen)}
            data-collapse-toggle="navbar-sticky"
            type="button"
            className="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-blue-700
            hover:text-white focus:outline-none focus:ring-2 
            backdrop-filter backdrop-blur-lg focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
            aria-controls="navbar-sticky"
            aria-expanded={isOpen ? "true" : "false"}
          >
            <span className="sr-only">Open main menu</span>
            <svg
              className="w-5 h-5"
              aria-hidden="true"
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 17 14"
            >
              <path
                stroke="currentColor"
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth="2"
                d="M1 1h15M1 7h15M1 13h15"
              />
            </svg>
          </button>
        </div>
        <div
          className={`items-center justify-between ${
            isOpen ? "block" : "hidden"
          } w-full md:flex md:w-auto md:order-1`}
          id="navbar-sticky"
        >
          <ul
            className="flex flex-col p-4 md:p-0 mt-4 font-medium border border-gray-100 rounded-lg  md:space-x-8 rtl:space-x-reverse md:flex-row md:mt-0 md:border-0 
          dark:bg-opacity-10  dark:border-gray-700"
          >
            <li>
              <Link
                href="/"
                className="block hover:bg-blue-700 rounded py-2 px-3 text-black dark:text-white hover:text-white"
                aria-current="page"
              >
                Home
              </Link>
            </li>

            <li>
              <Link
                href="/about"
                className="block hover:bg-blue-700 rounded py-2 px-3 text-black dark:text-white hover:text-white"
              >
                About
              </Link>
            </li>
            <li>
              <Link
                href="/services"
                className="block hover:bg-blue-700 rounded py-2 px-3 text-black dark:text-white hover:text-white"
              >
                Services
              </Link>
            </li>
            <li>
              <Link
                href="/contact"
                className="block hover:bg-blue-700 rounded py-2 px-3 text-black dark:text-white hover:text-white"
              >
                Contact
              </Link>
            </li>
            <li>
              <ModeToggle />
            </li>
          </ul>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
