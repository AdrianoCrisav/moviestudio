.class Lcom/android/videoeditor/ProjectsActivity$2;
.super Ljava/lang/Object;
.source "ProjectsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/ProjectsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/ProjectsActivity;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/ProjectsActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/videoeditor/ProjectsActivity$2;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity$2;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/ProjectsActivity;->access$000(Lcom/android/videoeditor/ProjectsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity$2;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/ProjectsActivity;->showDialog(I)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/videoeditor/ProjectsActivity$2;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity$2;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/ProjectsActivity;->access$000(Lcom/android/videoeditor/ProjectsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/videoeditor/ProjectsActivity;->access$300(Lcom/android/videoeditor/ProjectsActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
