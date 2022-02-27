<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <!--/breadcrumb-bg-->
  <div class="breadcrumb-bg py-5  w3l-inner-page-breadcrumb">
    <div class="container pt-lg-5 pt-md-3 p-lg-4 pb-md-3 my-lg-3">
      <ul class="breadcrumbs-custom-path mt-3 text-center pt-5">
        <li><a href="index.html">Home</a></li>
        <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Contact </li>
      </ul>
    </div>
  </div>

  <!--//breadcrumb-bg-->
  <!-- contacts -->
  <section class="w3l-contact-7 py-5">
    <div class="contacts-9 py-lg-5 py-md-4">
      <div class="container">
          <div class="title-content text-left">
            <h6 class="title-subhny">Send a Message</h6>
            <h3 class="title-w3l">Have a Question?</h3>
            <p class="mb-4">Please let us know if you have a question want to leave a comment</p>
          </div>
          <div class="row map-content-9 mt-5 pt-lg-3">
            <div class="col-lg-5 cont-details pr-lg-5 mb-lg-0 mb-sm-5 mb-4">
              <address>
                <div class="ad-info-gd mb-4">
                  <div classs="w3ad-icon text-center">
                    <span class="fa fa-map-o"></span>
                  </div>
                  <div classs="w3ad-infin">
                    <h5 class="mb-2">Our Location</h5>
                    <p>Car Servicing, 208 Trainer Avenue street, Corner
                      Market, NY - 62617 </p>
                  </div>
                </div>
                
                <div class="ad-info-gd mb-4">
                  <div classs="col-3 w3ad-icon text-center">
                    <span class="fa fa-envelope-o"></span>
                  </div>
                  <div classs="col-9 w3ad-infin">
                    <h5 class="mb-2">Mail Us</h5>
                    <p> <a href="mailto:mail@example.com">mail@example.com</a></p>
                    <p> <a href="mailto:mail@example.com">mail@example.com</a></p>
                  </div>
                </div>
                <div class="ad-info-gd mb-4">
                  <div classs="w3ad-icon text-center">
                    <span class="fa fa-volume-control-phone"></span>
                  </div>
                  <div classs="w3ad-infin">
                    <h5 class="mb-2">Call Us</h5>
                    <p><a href="tel:+1(12) 366 411 4899"> +1(12) 366 411
                      4899</a></p>
                    <p><a href="tel:+1(12) 366 411 4999"> +1(12) 366 411
                        4999</a></p>
                  </div>
                </div>
            
              </address>
            </div>
            <div class="col-lg-7">
              <form action="https://sendmail.w3layouts.com/submitForm" method="post" class="text-right">
                <div class="form-grid mb-3">
                  <input type="text" name="w3lName" id="w3lName" placeholder="Name*" required="">
                  <input type="email" name="w3lSender" id="w3lSender" placeholder="Email*" required="">
                </div>
                <input type="text" name="w3lSubject" id="w3lSubject" placeholder="Subject">
                <textarea name="w3lMessage" id="w3lMessage" placeholder="Message"></textarea>
                <button type="submit" class="btn btn-primary btn-style mt-3">Submit Message <span class="fa fa-paper-plane ml-3" aria-hidden="true"></span></button>
              </form>
            </div>

          </div>
          <div class="map mt-lg-5 mt-4">
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d118147.68202062105!2d70.75125565289972!3d22.27363079360925!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3959c98ac71cdf0f%3A0x76dd15cfbe93ad3b!2sRajkot%2C%20Gujarat!5e0!3m2!1sen!2sin!4v1645956025690!5m2!1sen!2sin"
              frameborder="0" style="border:0" allowfullscreen=""></iframe>
          </div>
        </div>
      </div>
  </section>
  <!-- //contacts -->
</asp:Content>

