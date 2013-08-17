using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace MicroFloatConverter {
    public partial class ConverterForm : Form {
        public ConverterForm() {
            InitializeComponent();
        }

        private void convBtn_Click(object sender, EventArgs e) {
            Double dbVal = 0.0f;
            try {
                dbVal = Double.Parse(decBox.Text);
            } catch (Exception ex) {
                MessageBox.Show("Bad input: " + ex.Message);
                return;
            }
            if (dbVal == 0.0f) {
                manDec.Text = "0";
                expDec.Text = "0";
                signDec.Text = "0";
                floatHex.Text = "0000";
                manHex.Text = "0000000000";
                expHex.Text = "00000";
                signHex.Text = "0";
                return;
            }
            int signVal = (dbVal < 0) ? 1 : 0;
            signHex.Text = signVal.ToString();
            signDec.Text = signVal.ToString();

            dbVal = Math.Abs(dbVal);
            Decimal logVal = (Decimal)Math.Log(dbVal, 2.0f);
            int exp = (logVal > 0)? (int)Decimal.Floor(logVal) : (int)Decimal.Floor(logVal);

            Double manVal = Math.Abs(dbVal) - Math.Pow(2.0f, exp);
            string mantissa = "";
            int manInt = 0;
            
            manVal /= Math.Pow(2.0f, exp); 
            for (int i = 0; i < 10; i++) {
                manVal *= 2.0f;
                manInt <<= 1;
                if (manVal >= 1.0f) {
                    mantissa += "1";
                    manInt += 1;
                    manVal -= 1.0f;
                } else {
                    mantissa += "0";
                }
            }

            manHex.Text = mantissa;
            manDec.Text = manInt.ToString();

            exp += 15;
            int uFloatVal = (signVal << 15) | (exp << 10) | manInt;
            floatHex.Text = (exp < 0)? "[DENORM]" : uFloatVal.ToString("X4");

            if (exp < 0) {
                expDec.Text = "[DENORM]";
            } else {
                expDec.Text = exp.ToString();
                char[] bits = new char[5];
                int i = 0;
                while(i < 5) {
                    bits[i++] = ((exp & 1) == 1) ? '1' : '0';
                    exp >>= 1;
                }
                Array.Reverse(bits, 0, i);
                expHex.Text = new string(bits);
            }


            
        }


       
    }
}
