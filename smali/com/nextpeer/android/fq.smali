.class final Lcom/nextpeer/android/fq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/fp;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/fp;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/fq;->a:Lcom/nextpeer/android/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/fq;->a:Lcom/nextpeer/android/fp;

    invoke-virtual {v0}, Lcom/nextpeer/android/fp;->dismiss()V

    iget-object v0, p0, Lcom/nextpeer/android/fq;->a:Lcom/nextpeer/android/fp;

    invoke-static {v0}, Lcom/nextpeer/android/fp;->a(Lcom/nextpeer/android/fp;)V

    return-void
.end method
