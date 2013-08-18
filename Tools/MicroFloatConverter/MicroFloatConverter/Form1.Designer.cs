namespace MicroFloatConverter {
    partial class ConverterForm {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing) {
            if (disposing && (components != null)) {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent() {
            this.decBox = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.signHex = new System.Windows.Forms.TextBox();
            this.expHex = new System.Windows.Forms.TextBox();
            this.manHex = new System.Windows.Forms.TextBox();
            this.floatHex = new System.Windows.Forms.TextBox();
            this.manDec = new System.Windows.Forms.TextBox();
            this.expDec = new System.Windows.Forms.TextBox();
            this.signDec = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.dec2Hex = new System.Windows.Forms.Button();
            this.hex2Dec = new System.Windows.Forms.Button();
            this.decOut = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.hexIn = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // decBox
            // 
            this.decBox.Location = new System.Drawing.Point(44, 30);
            this.decBox.Name = "decBox";
            this.decBox.Size = new System.Drawing.Size(101, 20);
            this.decBox.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(41, 14);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(45, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Decimal";
            // 
            // signHex
            // 
            this.signHex.Location = new System.Drawing.Point(12, 81);
            this.signHex.Name = "signHex";
            this.signHex.ReadOnly = true;
            this.signHex.Size = new System.Drawing.Size(26, 20);
            this.signHex.TabIndex = 2;
            this.signHex.TabStop = false;
            // 
            // expHex
            // 
            this.expHex.Location = new System.Drawing.Point(44, 81);
            this.expHex.Name = "expHex";
            this.expHex.ReadOnly = true;
            this.expHex.Size = new System.Drawing.Size(67, 20);
            this.expHex.TabIndex = 3;
            this.expHex.TabStop = false;
            // 
            // manHex
            // 
            this.manHex.Location = new System.Drawing.Point(117, 81);
            this.manHex.Name = "manHex";
            this.manHex.ReadOnly = true;
            this.manHex.Size = new System.Drawing.Size(77, 20);
            this.manHex.TabIndex = 4;
            this.manHex.TabStop = false;
            // 
            // floatHex
            // 
            this.floatHex.Location = new System.Drawing.Point(67, 141);
            this.floatHex.Name = "floatHex";
            this.floatHex.ReadOnly = true;
            this.floatHex.Size = new System.Drawing.Size(75, 20);
            this.floatHex.TabIndex = 2;
            // 
            // manDec
            // 
            this.manDec.Location = new System.Drawing.Point(117, 107);
            this.manDec.Name = "manDec";
            this.manDec.ReadOnly = true;
            this.manDec.Size = new System.Drawing.Size(77, 20);
            this.manDec.TabIndex = 8;
            this.manDec.TabStop = false;
            // 
            // expDec
            // 
            this.expDec.Location = new System.Drawing.Point(44, 107);
            this.expDec.Name = "expDec";
            this.expDec.ReadOnly = true;
            this.expDec.Size = new System.Drawing.Size(67, 20);
            this.expDec.TabIndex = 7;
            this.expDec.TabStop = false;
            // 
            // signDec
            // 
            this.signDec.Location = new System.Drawing.Point(12, 107);
            this.signDec.Name = "signDec";
            this.signDec.ReadOnly = true;
            this.signDec.Size = new System.Drawing.Size(26, 20);
            this.signDec.TabIndex = 6;
            this.signDec.TabStop = false;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(10, 65);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(28, 13);
            this.label2.TabIndex = 9;
            this.label2.Text = "Sign";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(44, 65);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(52, 13);
            this.label3.TabIndex = 10;
            this.label3.Text = "Exponent";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(114, 65);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(49, 13);
            this.label4.TabIndex = 11;
            this.label4.Text = "Mantissa";
            // 
            // dec2Hex
            // 
            this.dec2Hex.Location = new System.Drawing.Point(67, 167);
            this.dec2Hex.Name = "dec2Hex";
            this.dec2Hex.Size = new System.Drawing.Size(75, 23);
            this.dec2Hex.TabIndex = 1;
            this.dec2Hex.Text = "Dec -> Hex";
            this.dec2Hex.UseVisualStyleBackColor = true;
            this.dec2Hex.Click += new System.EventHandler(this.convBtn_Click);
            // 
            // hex2Dec
            // 
            this.hex2Dec.Location = new System.Drawing.Point(261, 167);
            this.hex2Dec.Name = "hex2Dec";
            this.hex2Dec.Size = new System.Drawing.Size(75, 23);
            this.hex2Dec.TabIndex = 14;
            this.hex2Dec.Text = "Hex -> Dec";
            this.hex2Dec.UseVisualStyleBackColor = true;
            this.hex2Dec.Click += new System.EventHandler(this.hex2Dec_Click);
            // 
            // decOut
            // 
            this.decOut.Location = new System.Drawing.Point(248, 141);
            this.decOut.Name = "decOut";
            this.decOut.ReadOnly = true;
            this.decOut.Size = new System.Drawing.Size(101, 20);
            this.decOut.TabIndex = 15;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(245, 14);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(26, 13);
            this.label5.TabIndex = 13;
            this.label5.Text = "Hex";
            // 
            // hexIn
            // 
            this.hexIn.Location = new System.Drawing.Point(248, 30);
            this.hexIn.Name = "hexIn";
            this.hexIn.Size = new System.Drawing.Size(101, 20);
            this.hexIn.TabIndex = 12;
            // 
            // ConverterForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(382, 202);
            this.Controls.Add(this.hex2Dec);
            this.Controls.Add(this.decOut);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.hexIn);
            this.Controls.Add(this.dec2Hex);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.manDec);
            this.Controls.Add(this.expDec);
            this.Controls.Add(this.signDec);
            this.Controls.Add(this.floatHex);
            this.Controls.Add(this.manHex);
            this.Controls.Add(this.expHex);
            this.Controls.Add(this.signHex);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.decBox);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.KeyPreview = true;
            this.Name = "ConverterForm";
            this.ShowIcon = false;
            this.Text = "uFloat Converter";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox decBox;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox signHex;
        private System.Windows.Forms.TextBox expHex;
        private System.Windows.Forms.TextBox manHex;
        private System.Windows.Forms.TextBox floatHex;
        private System.Windows.Forms.TextBox manDec;
        private System.Windows.Forms.TextBox expDec;
        private System.Windows.Forms.TextBox signDec;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button dec2Hex;
        private System.Windows.Forms.Button hex2Dec;
        private System.Windows.Forms.TextBox decOut;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox hexIn;
    }
}

