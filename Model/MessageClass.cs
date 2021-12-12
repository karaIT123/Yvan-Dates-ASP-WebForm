using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Dates.Model
{
    public class MessageClass
    {
        public string id { get; set; }
        public string content { get; set; }
        public string from { get; set; }
        public string to { get; set; }
        public string created_at { get; set; }


        /*private DateTime _created_at;
        public DateTime created_at { get; }
        private void setCreated_at()
        {
            this._created_at = DateTime.Now;
        }ssageClass(string _from, string _to, string _content)
        {
            from = _from;
            to = _to;
            content = _content;
        }*/

    }
}