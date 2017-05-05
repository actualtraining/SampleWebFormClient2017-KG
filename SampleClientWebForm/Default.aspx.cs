using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BO;
using ServicesBackend;
using System.Threading.Tasks;

namespace SampleClientWebForm
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDate1.Text = DateTime.Now.ToString();
            lblDate2.Text = DateTime.Now.ToString();
        }
        public async Task<IEnumerable<BO.Barang>> gvBarang_GetData()
        {
            BarangServices barangServices = new BarangServices();
            return await barangServices.GetAllBarangKategoriMap();
        }
    }
}