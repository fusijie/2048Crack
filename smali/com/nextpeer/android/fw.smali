.class public final Lcom/nextpeer/android/fw;
.super Lcom/nextpeer/android/em;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/fw$aa;
    }
.end annotation


# instance fields
.field private b:Lcom/nextpeer/android/fw$aa;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/nextpeer/android/em;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/fw;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/nextpeer/android/fw;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/fw;)Lcom/nextpeer/android/fw$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/fw;->b:Lcom/nextpeer/android/fw$aa;

    return-object v0
.end method

.method static a(IILjava/lang/String;)Lcom/nextpeer/android/fw;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "args_title_text_res_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "args_description_res_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "args_error_message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/nextpeer/android/fw;

    invoke-direct {v1}, Lcom/nextpeer/android/fw;-><init>()V

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/fw;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method static synthetic b(Lcom/nextpeer/android/fw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/fw;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/nextpeer/android/fw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/fw;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/nextpeer/android/em;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/fw;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/nextpeer/android/fw;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/nextpeer/android/fw$aa;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/nextpeer/android/fw$aa;

    iput-object v0, p0, Lcom/nextpeer/android/fw;->b:Lcom/nextpeer/android/fw$aa;

    :cond_0
    invoke-virtual {p0}, Lcom/nextpeer/android/fw;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "args_title_text_res_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nextpeer/android/fw;->c:I

    const-string v1, "args_description_res_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nextpeer/android/fw;->d:I

    const-string v1, "args_error_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/fw;->f:Ljava/lang/String;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x8

    sget v0, Lcom/nextpeer/android/R$layout;->np__dialog_report_to_support_alert:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    sget v0, Lcom/nextpeer/android/R$id;->np__dialog_question_title:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/nextpeer/android/R$id;->np__dialog_question_description:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/nextpeer/android/R$id;->np__dialog_question_button_confirm:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sget v3, Lcom/nextpeer/android/R$id;->np__dialog_question_button_report_to_support:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget v5, p0, Lcom/nextpeer/android/fw;->c:I

    if-lez v5, :cond_0

    iget v5, p0, Lcom/nextpeer/android/fw;->c:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/nextpeer/android/fw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v5, p0, Lcom/nextpeer/android/fw;->c:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/fw;->e:Ljava/lang/String;

    :goto_0
    iget v0, p0, Lcom/nextpeer/android/fw;->d:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/nextpeer/android/fw;->d:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    new-instance v0, Lcom/nextpeer/android/fx;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/fx;-><init>(Lcom/nextpeer/android/fw;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/nextpeer/android/fy;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/fy;-><init>(Lcom/nextpeer/android/fw;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v4

    :cond_0
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/nextpeer/android/em;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/fw;->b:Lcom/nextpeer/android/fw$aa;

    return-void
.end method
