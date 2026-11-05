.class public Lcom/android/videoeditor/ProjectsActivity;
.super Lcom/android/videoeditor/NoSearchActivity;
.source "ProjectsActivity.java"


# static fields
.field private static final DIALOG_NEW_PROJECT_ID:I = 0x1

.field private static final DIALOG_REMOVE_PROJECT_ID:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ProjectsActivity"

.field private static final MENU_NEW_PROJECT_ID:I = 0x1

.field public static final PARAM_CREATE_PROJECT_NAME:Ljava/lang/String; = "name"

.field private static final PARAM_DIALOG_PATH_ID:Ljava/lang/String; = "path"

.field public static final PARAM_OPEN_PROJECT_PATH:Ljava/lang/String; = "path"

.field private static final REQUEST_CODE_CREATE_PROJECT:I = 0x2

.field private static final REQUEST_CODE_OPEN_PROJECT:I = 0x1

.field private static final SHOW_TITLE_THRESHOLD_WIDTH_DIP:I = 0x3e8


# instance fields
.field private mAdapter:Lcom/android/videoeditor/ProjectPickerAdapter;

.field private mGridView:Landroid/widget/GridView;

.field private mProjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/VideoEditorProject;",
            ">;"
        }
    .end annotation
.end field

.field private final mProjectsLoadedListener:Lcom/android/videoeditor/service/ApiServiceListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/videoeditor/NoSearchActivity;-><init>()V

    .line 77
    new-instance v0, Lcom/android/videoeditor/ProjectsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/videoeditor/ProjectsActivity$1;-><init>(Lcom/android/videoeditor/ProjectsActivity;)V

    iput-object v0, p0, Lcom/android/videoeditor/ProjectsActivity;->mProjectsLoadedListener:Lcom/android/videoeditor/service/ApiServiceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/videoeditor/ProjectsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/ProjectsActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity;->mProjects:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/videoeditor/ProjectsActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/ProjectsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/videoeditor/ProjectsActivity;->mProjects:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/videoeditor/ProjectsActivity;)Lcom/android/videoeditor/ProjectPickerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/ProjectsActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity;->mAdapter:Lcom/android/videoeditor/ProjectPickerAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/videoeditor/ProjectsActivity;Lcom/android/videoeditor/ProjectPickerAdapter;)Lcom/android/videoeditor/ProjectPickerAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/ProjectsActivity;
    .param p1, "x1"    # Lcom/android/videoeditor/ProjectPickerAdapter;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/videoeditor/ProjectsActivity;->mAdapter:Lcom/android/videoeditor/ProjectPickerAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/videoeditor/ProjectsActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/ProjectsActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/videoeditor/ProjectsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/ProjectsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/videoeditor/ProjectsActivity;->openProject(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/videoeditor/ProjectsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/ProjectsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/videoeditor/ProjectsActivity;->createProject(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/videoeditor/ProjectsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/ProjectsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/videoeditor/ProjectsActivity;->deleteProject(Ljava/lang/String;)V

    return-void
.end method

.method private createProject(Ljava/lang/String;)V
    .locals 5
    .param p1, "projectName"    # Ljava/lang/String;

    .prologue
    .line 288
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.INSERT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v3, "name"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-static {p0}, Lcom/android/videoeditor/util/FileUtils;->createNewProjectPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "projectPath":Ljava/lang/String;
    const-string v3, "path"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/android/videoeditor/ProjectsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "projectPath":Ljava/lang/String;
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 296
    const v3, 0x7f090038

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private deleteProject(Ljava/lang/String;)V
    .locals 1
    .param p1, "projectPath"    # Ljava/lang/String;

    .prologue
    .line 282
    invoke-static {p0, p1}, Lcom/android/videoeditor/service/ApiService;->deleteProject(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity;->mAdapter:Lcom/android/videoeditor/ProjectPickerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/videoeditor/ProjectPickerAdapter;->remove(Ljava/lang/String;)Z

    .line 284
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 309
    const-string v0, "ProjectsActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const-string v0, "ProjectsActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    return-void
.end method

.method private openProject(Ljava/lang/String;)V
    .locals 2
    .param p1, "projectPath"    # Ljava/lang/String;

    .prologue
    .line 302
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/videoeditor/ProjectsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 306
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/videoeditor/NoSearchActivity;->onCreate(Landroid/os/Bundle;)V

    # a chinga por eso no funcionaban las capas >:v
    invoke-static {p0}, Lcom/android/videoeditor/PermGate;->ask(Landroid/app/Activity;)V

    .line 92
    const v3, 0x7f040012

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/ProjectsActivity;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/videoeditor/ProjectsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 96
    .local v0, "actionBar":Landroid/app/ActionBar;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 97
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/videoeditor/ProjectsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 98
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v3, v4

    float-to-int v2, v3

    .line 100
    .local v2, "widthDip":I
    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v3

    or-int/lit8 v3, v3, 0x8

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 103
    const v3, 0x7f090001

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 106
    :cond_0
    const v3, 0x7f08002e

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/ProjectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/android/videoeditor/ProjectsActivity;->mGridView:Landroid/widget/GridView;

    .line 107
    iget-object v3, p0, Lcom/android/videoeditor/ProjectsActivity;->mGridView:Landroid/widget/GridView;

    new-instance v4, Lcom/android/videoeditor/ProjectsActivity$2;

    invoke-direct {v4, p0}, Lcom/android/videoeditor/ProjectsActivity$2;-><init>(Lcom/android/videoeditor/ProjectsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    iget-object v3, p0, Lcom/android/videoeditor/ProjectsActivity;->mGridView:Landroid/widget/GridView;

    new-instance v4, Lcom/android/videoeditor/ProjectsActivity$3;

    invoke-direct {v4, p0}, Lcom/android/videoeditor/ProjectsActivity$3;-><init>(Lcom/android/videoeditor/ProjectsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 151
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 192
    packed-switch p1, :pswitch_data_0

    .line 259
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 194
    :pswitch_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/ProjectsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/videoeditor/ProjectsActivity$4;

    invoke-direct {v4, p0}, Lcom/android/videoeditor/ProjectsActivity$4;-><init>(Lcom/android/videoeditor/ProjectsActivity;)V

    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/ProjectsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/videoeditor/ProjectsActivity$5;

    invoke-direct {v6, p0}, Lcom/android/videoeditor/ProjectsActivity$5;-><init>(Lcom/android/videoeditor/ProjectsActivity;)V

    new-instance v7, Lcom/android/videoeditor/ProjectsActivity$6;

    invoke-direct {v7, p0}, Lcom/android/videoeditor/ProjectsActivity$6;-><init>(Lcom/android/videoeditor/ProjectsActivity;)V

    const/4 v8, 0x0

    const/16 v9, 0x20

    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/ProjectsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/android/videoeditor/AlertDialogs;->createEditDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;IILjava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 228
    :pswitch_1
    const-string v0, "path"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 229
    .local v11, "projectPath":Ljava/lang/String;
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/ProjectsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/ProjectsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f09008a

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/ProjectsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/videoeditor/ProjectsActivity$7;

    invoke-direct {v5, p0, v11}, Lcom/android/videoeditor/ProjectsActivity$7;-><init>(Lcom/android/videoeditor/ProjectsActivity;Ljava/lang/String;)V

    const v0, 0x7f09008b

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/ProjectsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/videoeditor/ProjectsActivity$8;

    invoke-direct {v7, p0}, Lcom/android/videoeditor/ProjectsActivity$8;-><init>(Lcom/android/videoeditor/ProjectsActivity;)V

    new-instance v8, Lcom/android/videoeditor/ProjectsActivity$9;

    invoke-direct {v8, p0}, Lcom/android/videoeditor/ProjectsActivity$9;-><init>(Lcom/android/videoeditor/ProjectsActivity;)V

    const/4 v9, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 170
    const v0, 0x7f090031

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020029

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v1, 0x0

    const/4 v0, 0x2

    const-string v2, "Cr\u00e9ditos"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v2, 0x1

    .line 173
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 178
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 185
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 180
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/ProjectsActivity;->showDialog(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Landroid/media/videoeditor/chadsstacys;->open(Landroid/app/Activity;)V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-super {p0}, Lcom/android/videoeditor/NoSearchActivity;->onPause()V

    .line 163
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity;->mProjectsLoadedListener:Lcom/android/videoeditor/service/ApiServiceListener;

    invoke-static {v0}, Lcom/android/videoeditor/service/ApiService;->unregisterListener(Lcom/android/videoeditor/service/ApiServiceListener;)V

    .line 164
    iput-object v1, p0, Lcom/android/videoeditor/ProjectsActivity;->mAdapter:Lcom/android/videoeditor/ProjectPickerAdapter;

    .line 165
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 266
    packed-switch p1, :pswitch_data_0

    .line 277
    :goto_0
    return-void

    :pswitch_0
    move-object v1, p2

    .line 271
    check-cast v1, Landroid/app/AlertDialog;

    .line 272
    .local v1, "newProjectDialog":Landroid/app/AlertDialog;
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 273
    .local v2, "positiveButton":Landroid/widget/Button;
    const v3, 0x7f080007

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 275
    .local v0, "inputField":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/videoeditor/NoSearchActivity;->onResume()V

    .line 156
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity;->mProjectsLoadedListener:Lcom/android/videoeditor/service/ApiServiceListener;

    invoke-static {v0}, Lcom/android/videoeditor/service/ApiService;->registerListener(Lcom/android/videoeditor/service/ApiServiceListener;)V

    .line 157
    invoke-static {p0}, Lcom/android/videoeditor/service/ApiService;->loadProjects(Landroid/content/Context;)V

    .line 158
    return-void
.end method
