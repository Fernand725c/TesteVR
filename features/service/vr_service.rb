class ApiVr


# classe de metodos de services
  def get_portal_vr
    $response = HTTParty.get(
      $service_vr_uri[$env],
      :verify => false,
      # body: $request.to_json,
      headers: { "Content-Type": "application/json" }
    )
    number = rand(1..10)
    print $response["typeOfEstablishment"][number]
  end
end
