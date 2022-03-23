<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageUsers.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 id="forms-example" class="">Basic Form</h2>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email address">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None" 
          Height="200px" Width="500px" 
          HorizontalAlign="Center" CssClass="girdViewStyle" CellPadding="4" 
        ForeColor="#333333">
          <AlternatingRowStyle BackColor="White" 
              HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="#284775" />
          <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
          <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
              HorizontalAlign="Center" VerticalAlign="Middle" />
          <Columns>
              <asp:TemplateField HeaderText="ID">
                  <ItemTemplate>
                      <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Fullname">
                  <ItemTemplate>
                      <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("fullname") %>'></asp:Literal>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Email">
                  <ItemTemplate>
                      <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("email") %>'></asp:Literal>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Password">
                  <ItemTemplate>
                      <asp:Literal ID="Literal6" runat="server" Text='<%# Eval("password") %>'></asp:Literal>
                  </ItemTemplate>
              </asp:TemplateField>
          </Columns>
          <EditRowStyle HorizontalAlign="Center" 
              VerticalAlign="Middle" BackColor="#999999" />
          <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
          <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" 
              VerticalAlign="Middle" />
          <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
          <SortedAscendingCellStyle BackColor="#E9E7E2" />
          <SortedAscendingHeaderStyle BackColor="#506C8C" />
          <SortedDescendingCellStyle BackColor="#FFFDF8" />
          <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
      </asp:GridView>
      <br />
  <div class="buttons_mu" align="center">
    <button type="submit" class="btn btn-default">Submit</button>
  </div>
<br />
</asp:Content>

