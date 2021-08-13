<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
     <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="contact-section" id="contact">
        <div class="container">
            <h3>Payment <span>Gateway</span></h3>

            <div class="contact-grid">
                <div class="col-md-12 contactdetails-grid">
                    <h5>Payment Type<span></span></h5>
                    <asp:DropDownList ID="ddlpaymenttype" runat="server">
                        <asp:ListItem Text="Debit Card" Value="Debit Card"></asp:ListItem>
                        <asp:ListItem Text="Credit Card" Value="Credit Card"></asp:ListItem>
                    </asp:DropDownList>
                    <h5>Card No<span>*</span></h5>
                    <asp:TextBox ID="txtcard" onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" runat="server" required></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="<br>Enter 16 digit Card no" ControlToValidate="txtcard" ValidationExpression="\b\d{4}[ -]?\d{4}[ -]?\d{4}[ -]?\d{4}\b"></asp:RegularExpressionValidator>
                    <h5>Expiry Date<span>*</span></h5>
                    <asp:TextBox ID="txtexp" runat="server" placeholder="2020/12" required></asp:TextBox>
                    <%--<asp:CustomValidator ID="custDate" runat="server" 
       ControlToValidate="txtexp" 
       ValidateEmptyText="false"  
       Text="Enter a valid future date" 
       />  --%>

                     <h5>CVV<span>*</span></h5>
                    <asp:TextBox ID="txtcvv" TextMode="Password" MaxLength="3" onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" runat="server" required></asp:TextBox>
                 
                    <h5></h5>
                    <asp:Button ID="btnpayment" runat="server" Text="Payment" OnClick="btnpayment_Click"/>
                    <asp:Panel ID="Panel1" runat="server" Visible="false">
                        <asp:Label ID="lblname" runat="server" Text=""></asp:Label>
                         <asp:Label ID="lblemail" runat="server" Text=""></asp:Label>
                         <asp:Label ID="lblmobile" runat="server" Text=""></asp:Label>
                        <asp:Label ID="lbltpersons" runat="server" Text=""></asp:Label>
                         <asp:Label ID="lblcheckindate" runat="server" Text=""></asp:Label>
                         <asp:Label ID="lblcheckoutdate" runat="server" Text=""></asp:Label>
                         <asp:Label ID="lbltotalrate" runat="server" Text=""></asp:Label>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
    	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#ContentPlaceHolder1_txtexp').datepicker({
                dateFormat: 'MM yy',
                changeMonth: true,
                changeYear: true,
                showButtonPanel: true,
                minDate: 0,

            onClose: function(dateText, inst) {
                var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
                var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
                $(this).val($.datepicker.formatDate('MM yy', new Date(year, month, 1)));
            }

            });

        //    $("#ContentPlaceHolder1_txtexp").focus(function () {
        //        $(".ui-datepicker-calendar").hide();
        //        $("#ui-datepicker-div").position({
        //            my: "left top",
        //            at: "left bottom",
        //            of: $(this)
        //        });
        //    });
        });
	</script>
    <%--<script>
        function compare(source, args) {
            var UserDate = document.getElementById("ContentPlaceHolder1_txtexp").value;
            var ToDate = new Date();
            alert(UserDate);
            if (new Date(UserDate).getTime() <= ToDate.getTime()) {
                alert("The Date must be Bigger or Equal to today date");
                return false;
            }
            return true;
        }
    </script>--%>
</asp:Content>

