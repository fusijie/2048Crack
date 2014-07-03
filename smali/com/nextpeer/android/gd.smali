.class final Lcom/nextpeer/android/gd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/gb;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/gb;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/gd;->a:Lcom/nextpeer/android/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/gd;->a:Lcom/nextpeer/android/gb;

    invoke-static {v0}, Lcom/nextpeer/android/gb;->h(Lcom/nextpeer/android/gb;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/gd;->a:Lcom/nextpeer/android/gb;

    invoke-static {v0}, Lcom/nextpeer/android/gb;->j(Lcom/nextpeer/android/gb;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/gd;->a:Lcom/nextpeer/android/gb;

    sget v1, Lcom/nextpeer/android/R$string;->np__tournament_loading_loading_bar_title_connecting:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/gb;->a(Lcom/nextpeer/android/gb;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/gd;->a:Lcom/nextpeer/android/gb;

    invoke-static {v1}, Lcom/nextpeer/android/gb;->k(Lcom/nextpeer/android/gb;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nextpeer/android/gd;->a:Lcom/nextpeer/android/gb;

    invoke-static {v0}, Lcom/nextpeer/android/gb;->l(Lcom/nextpeer/android/gb;)Lcom/nextpeer/android/dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/dr;->g()V

    return-void
.end method
