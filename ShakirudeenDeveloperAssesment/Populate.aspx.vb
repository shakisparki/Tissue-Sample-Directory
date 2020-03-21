Public Class Populate
    Inherits System.Web.UI.Page

    ' Create an instance of a LINQ data context
    Dim db As New DataClasses1DataContext
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'sample date should note be later than today's date
        rv_tb_dateUploaded.MinimumValue = Date.MinValue.ToShortDateString
        rv_tb_dateUploaded.MaximumValue = Date.Today.Date
    End Sub

    Public Sub ResetFields()
        'reset fields
        tb_donorCount.Text = ""
        tb_materialType.Text = ""
        ddl_collection.SelectedIndex = 0
        tb_dateUploaded.Text = Date.Today.Date.ToShortDateString
        rv_tb_dateUploaded.MinimumValue = Date.MinValue.ToShortDateString
        rv_tb_dateUploaded.MaximumValue = Date.Today.Date

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btn_submit.Click
        'Attempt to update samples table with data from forms
        Try
            Dim sample As New tb_sample With {.Collection_Id = ddl_collection.SelectedValue,
                                          .Donor_Count = Integer.Parse(tb_donorCount.Text),
                                          .Last_Updated = Date.Parse(tb_dateUploaded.Text),
                                          .Material_Type = tb_materialType.Text.ToString
                                        }

            'insert and submit changes to db  
            db.tb_samples.InsertOnSubmit(sample)
            db.SubmitChanges()

            'notify user of success of transaction
            lbl_status.ForeColor = Drawing.Color.Green
            lbl_status.Text = "New Sample added Successfully"
            ResetFields()
        Catch ex As Exception
            'notify user of failed transaction
            lbl_status.ForeColor = Drawing.Color.Red
            lbl_status.Text = "Failed to add New Sample! Check data is entered correctly."
        End Try

    End Sub
End Class