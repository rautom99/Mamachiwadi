<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="registration2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
     <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="contact-section" id="contact">
        <div class="container">
            <h3>Booking <span>Form</span></h3>

            <div class="contact-grid">
                <div class="col-md-12 contactdetails-grid">
                   
                    <h5>Full Name <span>*</span></h5>
                    <asp:TextBox ID="txtname" runat="server" required></asp:TextBox>
                    <h5>Email Address <span>*</span></h5>
                    <asp:TextBox ID="txtemail" TextMode="Email" runat="server" required></asp:TextBox>
                    <h5>Mobile No<span>*</span></h5>
                    <asp:TextBox ID="txtMobileNo" TextMode="Number" MaxLength="10" runat="server" required></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="<br>Enter 10 digit Mobile no" ControlToValidate="txtMobileNo" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                    <h5>Total Persons<span>*</span></h5>
                    <asp:TextBox ID="txtpersons" runat="server" TextMode="Number" required></asp:TextBox>
                    <h5>Check In Date<span>*</span></h5>
                    <asp:TextBox ID="txtcheckin" runat="server" required></asp:TextBox>
                    <asp:Button ID="btncheckavailability" runat="server" Text="Check Availability" OnClick="btncheckavailability_Click" Enabled="true"/>
                    <h5>Check Out Date</h5>
                    <asp:TextBox ID="txtcheckout" runat="server" required Enabled="false"></asp:TextBox>
                    <h5>Total Rate</h5>
                    <asp:TextBox ID="txttotal" runat="server" required Enabled="false"></asp:TextBox>
                    <h5>
                        <asp:Label ID="lblstatus" runat="server" Text=""></asp:Label></h5>
                    <asp:Button ID="btnbooking" OnClick="btnbooking_Click" runat="server" Text="Book" Enabled="false"/>
                   
                </div>
            </div>
        </div>
    </div>

	<%--  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>--%>
  	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#ContentPlaceHolder1_txtcheckin').datepicker({
                showSecond: true,
                dateFormat: 'dd/mm/yy',
                timeFormat: 'hh:mm:ss',
                stepHour: 2,
                stepMinute: 10,
                stepSecond: 10,
                minDate: new Date(),
                beforeShowDay:
                 function (dt) {
                     return [dt.getDay() >= 0 && dt.getDay() <= 5 ? false : true];
                 }
            });
        });
	</script>
</asp:Content>

