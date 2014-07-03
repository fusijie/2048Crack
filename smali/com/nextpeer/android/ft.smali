.class final Lcom/nextpeer/android/ft;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/fr;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/fr;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ft;->a:Lcom/nextpeer/android/fr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ft;->a:Lcom/nextpeer/android/fr;

    invoke-static {v0}, Lcom/nextpeer/android/fr;->a(Lcom/nextpeer/android/fr;)Lcom/nextpeer/android/fr$aa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ft;->a:Lcom/nextpeer/android/fr;

    invoke-static {v0}, Lcom/nextpeer/android/fr;->a(Lcom/nextpeer/android/fr;)Lcom/nextpeer/android/fr$aa;

    iget-object v0, p0, Lcom/nextpeer/android/ft;->a:Lcom/nextpeer/android/fr;

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/ft;->a:Lcom/nextpeer/android/fr;

    invoke-virtual {v0}, Lcom/nextpeer/android/fr;->dismiss()V

    return-void
.end method
