.class Lcom/android/videoeditor/ProjectsActivity$3$1;
.super Ljava/lang/Object;
.source "ProjectsActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/ProjectsActivity$3;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/videoeditor/ProjectsActivity$3;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/videoeditor/ProjectsActivity$3;I)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/videoeditor/ProjectsActivity$3$1;->this$1:Lcom/android/videoeditor/ProjectsActivity$3;

    iput p2, p0, Lcom/android/videoeditor/ProjectsActivity$3$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 145
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 137
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "path"

    iget-object v1, p0, Lcom/android/videoeditor/ProjectsActivity$3$1;->this$1:Lcom/android/videoeditor/ProjectsActivity$3;

    iget-object v1, v1, Lcom/android/videoeditor/ProjectsActivity$3;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    invoke-static {v1}, Lcom/android/videoeditor/ProjectsActivity;->access$000(Lcom/android/videoeditor/ProjectsActivity;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/android/videoeditor/ProjectsActivity$3$1;->val$position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/android/videoeditor/ProjectsActivity$3$1;->this$1:Lcom/android/videoeditor/ProjectsActivity$3;

    iget-object v1, v1, Lcom/android/videoeditor/ProjectsActivity$3;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/videoeditor/ProjectsActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x7f080056
        :pswitch_0
    .end packed-switch
.end method
