import Head from "next/head";
import Link from "next/link";
import { ThemeProvider } from "@/components/theme/theme-provider";

export default function NotFoundPage() {
  return (
    <ThemeProvider
      attribute="class"
      defaultTheme="dark"
      enableSystem
      disableTransitionOnChange
    >
      <Head>
        <title>404 Not Found – Meadow App</title>
        <meta
          name="description"
          content="Page not found – Meadow Social Media App"
        />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
      </Head>

      <div className="flex h-screen flex-col overflow-y-auto overflow-x-hidden">
        <main className="flex flex-grow flex-col items-center justify-center px-4">
          <h1 className="text-6xl font-bold text-center">404</h1>
          <p className="mt-4 text-xl text-center">
            Oops! We can’t find the page you’re looking for.
          </p>
          <Link
            href="/"
            className="mt-6 inline-block rounded bg-green-500 px-6 py-3 text-white hover:bg-green-600"
          >
            ← Back to Home
          </Link>
        </main>
      </div>
    </ThemeProvider>
  );
}
