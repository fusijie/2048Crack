.class final Lcom/nextpeer/android/dl;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/nextpeer/android/dk;

.field private b:Lcom/nextpeer/android/da;


# direct methods
.method public constructor <init>(Lcom/nextpeer/android/dk;Lcom/nextpeer/android/da;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nextpeer/android/dl;->a:Lcom/nextpeer/android/dk;

    iput-object p2, p0, Lcom/nextpeer/android/dl;->b:Lcom/nextpeer/android/da;

    return-void
.end method


# virtual methods
.method public final a()Lcom/nextpeer/android/dk;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dl;->a:Lcom/nextpeer/android/dk;

    return-object v0
.end method

.method public final b()Lcom/nextpeer/android/da;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dl;->b:Lcom/nextpeer/android/da;

    return-object v0
.end method
