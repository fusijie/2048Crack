.class Lcom/nextpeer/android/NextpeerActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/NextpeerActivity;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/NextpeerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/NextpeerActivity$1;->a:Lcom/nextpeer/android/NextpeerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/nextpeer/android/fp;

    invoke-direct {v0}, Lcom/nextpeer/android/fp;-><init>()V

    iget-object v1, p0, Lcom/nextpeer/android/NextpeerActivity$1;->a:Lcom/nextpeer/android/NextpeerActivity;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "NPUIPoweredByDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/fp;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
