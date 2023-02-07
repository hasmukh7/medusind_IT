<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validator.aspx.cs" Inherits="ValidatorPrj.Validator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function validateLength(oSrc, args){
            args.IsValid = (args.Value.length >= 2 && args.Value.length <= 25);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Insert Your Details</h1>
            <asp:Label ID="Label1" runat="server" Text="Name : "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <span style="color: #FF0000">*</span>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Name must be required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            
            <br />
            <asp:Label ID="Label2" runat="server" Text="Family Name : "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtfamilyname" runat="server"></asp:TextBox>
            <span style="color: #FF0000">*</span>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtname" ControlToValidate="txtfamilyname" ErrorMessage="Differ From Name" ForeColor="Red" Operator="NotEqual" Display="Dynamic"></asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtfamilyname" Display="Dynamic" ErrorMessage="Family Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <br />
            <asp:Label ID="Label3" runat="server" Text="Address : " MinLength="2"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            <span style="color: #FF0000">*</span>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Address required" Display="Dynamic" Font-Bold="False" ControlToValidate="txtaddress" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="at least 2 char" ControlToValidate="txtaddress" Display="Dynamic" ClientValidationFunction="validateLength" ForeColor="Red"></asp:CustomValidator>
            <br />

            <br />
            <asp:Label ID="Label4" runat="server" Text="city : " MinLength="2"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
            <span style="color: #FF0000">*</span>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="city required" Display="Dynamic" Font-Bold="False" ControlToValidate="txtcity" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="at least 2 char" ControlToValidate="txtcity" Display="Dynamic" ClientValidationFunction="validateLength" ForeColor="Red"></asp:CustomValidator>
            <br />

            <br />
            <asp:Label ID="Label5" runat="server" Text="Zip Code : "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtzipcode" runat="server"></asp:TextBox>
            <span style="color: #FF0000">*</span>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtzipcode" ErrorMessage="Enter valid zip code eg(123456)" ForeColor="Red" ValidationExpression="\d{6}" Display="Dynamic"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtzipcode" Display="Dynamic" ErrorMessage="Zipcode Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <br />
            <asp:Label ID="Label6" runat="server" Text="Phone : "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
            <span style="color: #FF0000">*</span>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphone" ErrorMessage="enter valid phone eg. (xx-xxxxxxx/xxx-xxxxxxx)" ForeColor="Red" ValidationExpression="(^[0-9]{2}-[0-9]{8}$)|(^[0-9]{3}-[0-9]{7}$)" Display="Dynamic"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtphone" Display="Dynamic" ErrorMessage="Phone Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <br />
            <asp:Label ID="Label7" runat="server" Text="Email : "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            <span style="color: #FF0000">*</span>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="example@example..com" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Check" Height="44px" OnClick="Button1_Click" Width="314px" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True" HeaderText="ValidationSum" />
            </div>
    </form>
</body>
</html>
