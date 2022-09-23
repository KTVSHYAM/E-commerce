using E_comm.BL;
using E_comm.Entity;
using iTextSharp;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using iTextSharp.text;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;


namespace Ecommerce
{
    public partial class TransactionsData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"].ToString()!="user")
            {
                Response.Redirect("UserLogin.aspx");
            }
        }

        protected void Go_Click(object sender, EventArgs e)
        {
            try
            {
                
                
                TransactionService transactionService = new TransactionService();
                Transactions transactions = new Transactions();
                DataTable dt = new DataTable();
                transactions.TransactionId = int.Parse(transactionid.Text);
                dt = transactionService.GetbyorderId(transactions);
                ordergrid.DataSource = dt;
                ordergrid.DataSourceID = null;
                ordergrid.DataBind();
                if(dt.Rows.Count>0)
                {
                    if (Session["username"].ToString() == dt.Rows[0][0].ToString())
                    {
                        orderidtxt.Text = dt.Rows[0][6].ToString();
                        oderdatetxt.Text = dt.Rows[0][5].ToString();
                        addresstxt.Text = dt.Rows[0][7].ToString();
                        invoicePanel.Visible = true;
                        Ntransactionerr.Visible = false;
                        transactionerr.Visible = false;
                    }
                    
                    else
                    {
                        Ntransactionerr.Visible = true;
                        invoicePanel.Visible = false;
                        transactionerr.Visible = false;
                    }
                    

                }
                
                else
                {
                    invoicePanel.Visible = false;
                    transactionerr.Visible = true;
                }
                Tpricetxt.Text = TotalAmount().ToString();

            }
            catch (Exception)
            {

                throw;
            }
        }
        public float TotalAmount()
        {
            float tprice = 0;
            foreach (GridViewRow row in ordergrid.Rows)
            {
                tprice = tprice + float.Parse(row.Cells[3].Text);
            }
            return tprice;
        }

        [Obsolete]
        private void exportpdf()
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            invoicePanel.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        [Obsolete]

        protected void invoicebtn_Click(object sender, EventArgs e)
        {
            exportpdf();
        }

        
    }
}