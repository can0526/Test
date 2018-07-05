package shop.pojo;

import java.io.Serializable;
import java.util.Date;

public class Product implements Serializable {
		private String pid;
		private String pname;
		private String market_price;
		private String shop_price;
		private String description;
		private String pimage;
		private String cid;
		private String pdate;
		public String getPid() {
			return pid;
		}
		public void setPid(String pid) {
			this.pid = pid;
		}
		public String getPname() {
			return pname;
		}
		public void setPname(String pname) {
			this.pname = pname;
		}
		public String getMarket_price() {
			return market_price;
		}
		public void setMarket_price(String market_price) {
			this.market_price = market_price;
		}
		public String getShop_price() {
			return shop_price;
		}
		public void setShop_price(String shop_price) {
			this.shop_price = shop_price;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public String getPimage() {
			return pimage;
		}
		public void setPimage(String pimage) {
			this.pimage = pimage;
		}
		public String getCid() {
			return cid;
		}
		public void setCid(String cid) {
			this.cid = cid;
		}
		public String getPdate() {
			return pdate;
		}
		public void setPdate(String pdate) {
			this.pdate = pdate;
		}
		
}
