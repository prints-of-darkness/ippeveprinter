# ippeveprinter-label - IPP Everywhere Printer with Label Printing Extension

This project is based on the `ippeveprinter` sample code from the **libcups** codebase. It extends the original IPP Everywhere printer example to include features and attributes relevant to **label printing**.

**Base Code:**

The core of this project is derived from the `ippeveprinter` sample application that is part of the libcups (CUPS - Common Unix Printing System) project.  This sample code provides a basic IPP Everywhere printer implementation, demonstrating how to create a simple IPP printer server using libcups.

**Label Printing Extension:**

This project adds extensions specifically for label printing functionality.  These extensions include:

*   **Label Printing Specific Attributes:**  Implementation of IPP attributes relevant to label printers, such as:
    *   `label-mode-supported` and `label-mode-configured`
    *   `media-tracking-supported`
    *   `label-tear-offset-supported` and `label-tear-offset-configured`
    *   `media-top-offset-supported`
    *   `print-darkness-supported` and `print-darkness-configured`
    *   `print-speed-supported` and `print-speed-default`
*   **Example Values and Logic:** The code includes example values and basic logic to demonstrate how these label-printing attributes can be incorporated into an IPP Everywhere printer.

**Important Note: Code Authorship**

It's crucial to understand that **the majority of the code in this project is not original work**. It is based on the `ippeveprinter` sample provided by the libcups project and contributions from the original authors and copyright holders of that code (OpenPrinting, IEEE-ISTO Printer Working Group, Apple Inc.).

This project builds upon that existing foundation and adds a specific extension for label printing.  The primary purpose is to demonstrate and explore the integration of label printing features within an IPP Everywhere printer context, using the well-established libcups codebase as a starting point.

**License:**

The licensing terms of this project are inherited from the original `ippeveprinter` sample code, which is licensed under the **Apache License v2.0**. Please refer to the `LICENSE` file for complete licensing information.

**Disclaimer:**

This project is intended for demonstration and educational purposes. It is not a production-ready label printer driver or server.  Further development and testing would be required for real-world label printing applications.
