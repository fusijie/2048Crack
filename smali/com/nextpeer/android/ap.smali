.class final Lcom/nextpeer/android/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/af$ad;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/af$ad;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ap;->a:Lcom/nextpeer/android/af$ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ap;->a:Lcom/nextpeer/android/af$ad;

    iget-object v0, v0, Lcom/nextpeer/android/af$ad;->a:Lcom/nextpeer/android/ad;

    invoke-static {v0}, Lcom/nextpeer/android/af$ad;->a(Lcom/nextpeer/android/ad;)V

    return-void
.end method
