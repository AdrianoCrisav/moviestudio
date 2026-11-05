.class Lcom/android/videoeditor/ProjectsActivity$3;
.super Ljava/lang/Object;
.source "ProjectsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 120
    iput-object p1, p0, Lcom/android/videoeditor/ProjectsActivity$3;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 125
    iget-object v1, p0, Lcom/android/videoeditor/ProjectsActivity$3;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    invoke-static {v1}, Lcom/android/videoeditor/ProjectsActivity;->access$000(Lcom/android/videoeditor/ProjectsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p3, v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/videoeditor/ProjectsActivity$3;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    invoke-virtual {v1, v4}, Lcom/android/videoeditor/ProjectsActivity;->showDialog(I)V

    .line 149
    :goto_0
    return v4

    .line 130
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/videoeditor/ProjectsActivity$3;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 131
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0b0004

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 132
    new-instance v1, Lcom/android/videoeditor/ProjectsActivity$3$1;

    invoke-direct {v1, p0, p3}, Lcom/android/videoeditor/ProjectsActivity$3$1;-><init>(Lcom/android/videoeditor/ProjectsActivity$3;I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 148
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method
