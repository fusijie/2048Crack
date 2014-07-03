.class public final Lcom/nextpeer/android/fr;
.super Lcom/nextpeer/android/em;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/fr$aa;
    }
.end annotation


# instance fields
.field private b:Lcom/nextpeer/android/fr$aa;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/em;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/fr;)Lcom/nextpeer/android/fr$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/fr;->b:Lcom/nextpeer/android/fr$aa;

    return-object v0
.end method

.method static a(IIII)Lcom/nextpeer/android/fr;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "args_title_text_res_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "args_description_res_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "args_confirm_button_res_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "args_cancel_button_res_id"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/nextpeer/android/fr;

    invoke-direct {v1}, Lcom/nextpeer/android/fr;-><init>()V

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/fr;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public final a(Lcom/nextpeer/android/fr$aa;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/fr;->b:Lcom/nextpeer/android/fr$aa;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/nextpeer/android/em;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/fr;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/nextpeer/android/fr;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "args_title_text_res_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nextpeer/android/fr;->c:I

    const-string v1, "args_description_res_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nextpeer/android/fr;->d:I

    const-string v1, "args_confirm_button_res_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nextpeer/android/fr;->e:I

    const-string v1, "args_cancel_button_res_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nextpeer/android/fr;->f:I

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x8

    sget v0, Lcom/nextpeer/android/R$layout;->np__dialog_question_alert:I

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

    sget v2, Lcom/nextpeer/android/R$id;->np__dialog_question_button_positive:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sget v3, Lcom/nextpeer/android/R$id;->np__dialog_question_button_negative:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget v5, p0, Lcom/nextpeer/android/fr;->c:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/nextpeer/android/fr;->c:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget v0, p0, Lcom/nextpeer/android/fr;->d:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/nextpeer/android/fr;->d:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget v0, p0, Lcom/nextpeer/android/fr;->e:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nextpeer/android/fr;->e:I

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    :cond_0
    new-instance v0, Lcom/nextpeer/android/fs;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/fs;-><init>(Lcom/nextpeer/android/fr;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/nextpeer/android/fr;->f:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/nextpeer/android/fr;->f:I

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(I)V

    :cond_1
    new-instance v0, Lcom/nextpeer/android/ft;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/ft;-><init>(Lcom/nextpeer/android/fr;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v4

    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/nextpeer/android/em;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/fr;->b:Lcom/nextpeer/android/fr$aa;

    return-void
.end method
