.class public Lcom/android/videoeditor/AlertDialogs;
.super Ljava/lang/Object;
.source "AlertDialogs.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "iconId"    # I
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "positive"    # Ljava/lang/String;
    .param p5, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "negative"    # Ljava/lang/String;
    .param p7, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p9, "cancelable"    # Z

    .prologue
    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 62
    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 65
    :cond_0
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v0, p4, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v0, p6, p7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v0, p8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v0, p9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 72
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 73
    return-object v1
.end method

.method public static createEditDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;IILjava/lang/String;)Landroid/app/AlertDialog;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "positiveButtonText"    # Ljava/lang/String;
    .param p4, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "negativeButtonText"    # Ljava/lang/String;
    .param p6, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p8, "inputType"    # I
    .param p9, "maxChars"    # I
    .param p10, "hint"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 101
    .local v6, "vi":Landroid/view/LayoutInflater;
    const v7, 0x7f040003

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 102
    .local v4, "myView":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 105
    const v7, 0x7f080007

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 106
    .local v5, "textInput":Landroid/widget/EditText;
    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 107
    :cond_0
    if-eqz p2, :cond_1

    .line 108
    invoke-virtual {v5, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const/4 v7, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/EditText;->setSelection(II)V

    .line 111
    :cond_1
    if-eqz p10, :cond_2

    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 113
    :cond_2
    if-lez p9, :cond_3

    .line 114
    const/4 v7, 0x1

    new-array v3, v7, [Landroid/text/InputFilter;

    .line 115
    .local v3, "filters":[Landroid/text/InputFilter;
    const/4 v7, 0x0

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    move/from16 v0, p9

    invoke-direct {v8, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v3, v7

    .line 116
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 119
    .end local v3    # "filters":[Landroid/text/InputFilter;
    :cond_3
    if-eqz p8, :cond_4

    .line 120
    move/from16 v0, p8

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 124
    :cond_4
    invoke-virtual {v1, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v1, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 128
    .local v2, "dialog":Landroid/app/AlertDialog;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 129
    new-instance v7, Lcom/android/videoeditor/AlertDialogs$1;

    invoke-direct {v7, v2}, Lcom/android/videoeditor/AlertDialogs$1;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 138
    new-instance v7, Lcom/android/videoeditor/AlertDialogs$2;

    invoke-direct {v7, v2}, Lcom/android/videoeditor/AlertDialogs$2;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    return-object v2
.end method
