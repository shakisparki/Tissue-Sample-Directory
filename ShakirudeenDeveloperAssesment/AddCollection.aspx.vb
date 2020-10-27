Public Class AddCollection
    Inherits System.Web.UI.Page

    ' Create an instance of a LINQ data context
    Dim db As New DataClasses1DataContext
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Public Sub ResetFields()
        'reset fields
        tb_term.Text = ""
        tb_title.Text = ""
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btn_submit.Click
        'Attempt to update samples table with data from forms
        Try
            Dim collection As New tb_collection With {.Term = tb_term.Text.ToString,
                                          .Title = tb_title.Text.ToString}

            'insert and submit changes to db  
            db.tb_collections.InsertOnSubmit(collection)
            db.SubmitChanges()

            'notify user of success of transaction
            lbl_status.ForeColor = Drawing.Color.Green
            lbl_status.Text = "New Collection added Successfully"
            ResetFields()
        Catch ex As Exception
            'notify user of failed transaction
            lbl_status.ForeColor = Drawing.Color.Red
            lbl_status.Text = "Failed to add New Collection! Check data is entered correctly."
        End Try

    End Sub

End Class