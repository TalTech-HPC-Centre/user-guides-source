# 21 TalTech HPC Centre User Acceptable Use Policy

# 21 TalTech HPC Centre User Acceptable Use Policy

*Document 21*

**TalTech HPC Centre**

**User Acceptable Use Policy**

Version 1.1 | 2026-10-19 | ISO 27001:2022 Control A.5.10

 

 

The TalTech High-Performance Computing (HPC) Centre provides shared computing infrastructure to support research, education, and innovation. Access is a privilege, not a right. It is granted on the condition that users comply with this policy. Non-compliance may result in immediate suspension of access.

 

# 1 Who This Policy Applies To

This policy applies to everyone who has been granted access to TalTech HPC Centre resources, including:

- TalTech staff, researchers, and students
- External collaborators and research partners
- Visiting researchers and guest users

Users can accept the AUP (Acceptable Use Policy) by either running the `taltech-aup` command in terminal when logged in to base, or by clicking `Agree to AUP` button in OnDemand.

 

# 2 Permitted Use

HPC resources may be used for:

- Research activities directly related to your TalTech HPC project allocation or collaboration agreement
- Research activities based on agreements (including commercial work)
- Educational activities associated with TalTech courses or programmes
- Software development and testing in support of the above research or educational activities

 

If you are unsure whether a planned use is permitted, contact HPC support (<hpcsupport@taltech.ee>) before proceeding.

 

# 3 Prohibited Activities

**Violations in this section are taken seriously. Depending on severity (see section 8), they may result in suspension of access, in the most serious cases without prior notice, and referral to TalTech disciplinary procedures.**

 

## 3.1 Security and system integrity

- Attempting to gain access to resources, accounts, or data that you are not authorised to access
- Attempting to circumvent, exploit, or test security controls without explicit written authorisation from HPC management
- Installing or running software that could compromise system security, including malware, rootkits, or network scanning tools
- Sharing your login credentials or SSH keys with any other person under any circumstances
- Using another person's credentials, even with their knowledge or consent

 

## 3.2 Interference with other users and the system

- Running jobs or processes that deliberately monopolise resources to the detriment of other users
- Interfering with, disrupting, or degrading the performance of the cluster for other users
- Attempting to access, read, copy, or modify another user's files or data without their explicit permission
- Submitting jobs designed to circumvent the SLURM scheduler or resource allocation controls
- Harassing, threatening, or abusing other users or HPC staff (see also section 6, Conduct and communication)

 

## 3.3 Non-permitted purposes

- Cryptocurrency mining or any other use of resources for personal financial gain
- Commercial activities not covered by a specific agreement with TalTech HPC
- Storing, distributing, or processing illegal content of any kind
- Activities that violate Estonian law, EU law, or applicable international regulations

 

## 3.4 Intellectual property and licensing

- Using software in violation of its licence terms
- Using third-party data in violation of its terms of use, licence, or data sharing agreement
- Redistributing licensed software accessible on HPC systems

 

# 4 Data Handling

## 4.1 Default data classification

All data you store in your TalTech HPC storage is treated as INTERNAL (see the data classification policy) by default — meaning it is not public and must not be shared outside TalTech without authorisation. This is the minimum. If your data requires stricter handling, you are responsible for declaring this.

All data you store in TalTech HPC storage is granted the level of access control according to INTERNAL by default, meaning it is accessible inside the cluster with proper access permissions.

 

## 4.2 Sensitive and confidential data

If your project involves any of the following, you must notify HPC support (<hpcsupport@taltech.ee>) before uploading or processing the data:

- Personal data relating to identifiable individuals (names, health data, biometrics, financial data, location data) — subject to GDPR
- Data under embargo, NDA, or partner confidentiality agreement
- Data subject to export control regulations (EU dual-use, US ITAR/EAR)
- Pre-publication research results with significant commercial or competitive value

 

HPC support will work with you to select appropriate technical controls (directory permissions, node reservations, encryption, isolated environments). Sensitive and confidential data allocations must be registered — contact HPC support for the registration process.

 

*ℹ Do not upload sensitive or confidential data to HPC until you have confirmed the appropriate controls are in place. Starting with the wrong setup is significantly harder to fix than setting it up correctly from the beginning.*

 

## 4.3 Personal data (GDPR)

If your research involves personal data, you must ensure that:

- A lawful basis for processing has been established — confirmed with the TalTech Data Protection Officer (DPO) before data is uploaded (see the table in section 12)
- The data is handled strictly in accordance with your project's ethics approval and data management plan
- Any data subject rights requests (access, erasure, correction) are handled through TalTech DPO

 

## 4.4 Data backup

HPC storage is not a backup system. You are responsible for maintaining your own copies of critical data. TalTech HPC is not liable for data loss resulting from hardware failure, accidental deletion, or system errors. Refer to the HPC documentation for guidance on available backup options and their limitations.

 

## 4.5 Storage quotas and cleanup

Storage quotas apply to all user accounts and project directories. Default quotas are communicated separately and updated periodically. Larger quotas may be requested and are granted on an individual basis. You are expected to:

- Monitor your storage usage and stay within your quota
- Regularly remove data that is no longer needed — including job output files, temporary files, and completed project data
- Archive or transfer completed project data promptly after project closure

 

Allocations that significantly exceed their quota or that contain data substantially past the project closure date may be subject to administrative cleanup.

 

## 4.6 Third-party data

If you import data from external sources, you are responsible for ensuring that your use complies with all applicable licence terms, data sharing agreements, intellectual property rights, and legal obligations. HPC Centre does not verify licence compliance for user-imported data — this responsibility lies entirely with the user.

 

# 5 Account and Credential Security

- Your HPC account is personal. You are fully responsible for all activity carried out under your account.
- Never share your password, SSH private key, or any other authentication credential with anyone — including colleagues, supervisors, or HPC staff. HPC staff will never ask for your password or private key.
- Protect your SSH private key with a strong passphrase. If you suspect your private key has been compromised, revoke it (remove associated public keys) and generate a new one immediately, and notify HPC support (<hpcsupport@taltech.ee>).
- Use multi-factor authentication where it is available and required.
- Lock or log out from your session when leaving your workstation unattended.
- Report any suspected unauthorised access to your account to HPC support immediately.

 

# 6 Responsible Resource Use and Conduct

**Resources**

- Request only the resources (CPU cores, memory, GPU) that your job actually needs. Over-requesting wastes shared capacity and delays other users' work.
    - Bills are sent out according to resource taken by Slurm allocation.
- Test jobs at small scale before submitting large production runs.
- Cancel jobs that are no longer needed rather than letting them run to their time limit unnecessarily.
- Do not run computationally intensive work on login nodes. Login nodes are shared and reserved for file management, job submission, and light interactive work only.
- Follow any fair-use guidelines or scheduling policies communicated by HPC support.

**Conduct and communication**

HPC is a shared facility used by people from many fields, countries, and backgrounds. Treat other users and HPC staff with respect in all communication, whether by support ticket, email, Teams, or any other channel.

- Be polite and constructive. Discuss the problem, not the person.
- Do not use abusive, threatening, discriminatory, or harassing language.
- Be patient with support requests. HPC staff help many users at the same time, and a clear description of the problem (what you ran, what you expected, the error message) gets you an answer faster.

 

# 7 Monitoring

TalTech HPC Centre monitors system usage, job activity, storage utilisation, network traffic, and security events. Monitoring is conducted to:

- Ensure fair and efficient use of shared resources
- Detect and respond to security incidents
- Maintain system performance and availability
- Verify compliance with this policy

 

Monitoring is conducted in accordance with Estonian law, GDPR, and TalTech privacy policies. By using HPC resources you acknowledge that your activity on HPC systems may be logged and reviewed for the purposes above.

 

# 8 Consequences of Policy Violation

 

|  |  |  |
| --- | --- | --- |
| **Severity** | **Examples** | **Likely Consequence** |
| Minor | Exceeding storage quota; running intensive jobs on login nodes; forgetting to cancel idle jobs; rude or disrespectful messages | Warning from HPC support; job termination; up to temporary resource restriction |
| Moderate | Attempting to access another user's files without authorisation; licence violations | Temporary suspension of access; mandatory policy retraining; report to PI and department |
| Serious | Sharing credentials; attempting to bypass security controls; deliberate interference with other users; harassment or threats against users or staff | Immediate suspension; referral to TalTech disciplinary procedures; possible access revocation |
| Severe | Processing PII data (e.g. classified under GDPR) without lawful basis; export control violations; illegal content; criminal activity | Immediate suspension; referral to TalTech Legal and/or law enforcement; possible criminal liability; access revocation |

 

HPC management has the authority to suspend access immediately where there is credible evidence of a serious or severe violation without prior notice. All other cases will involve notification and an opportunity to respond before action is taken.

 

# 9 Reporting Security Issues

If you discover or suspect any of the following, report it to HPC support immediately:

- Unauthorised access to your account or files
- Suspicious system behaviour or unexpected processes running under your account
- A security vulnerability in HPC systems or software
- A data breach or accidental exposure of sensitive data
- Any other security concern

 

Contact: HPC Support — <hpcsupport@taltech.ee> or [Teams HPC Users channel](https://teams.microsoft.com/l/channel/19%3AB0gs6vZkTxeIBPsBi4j6SW69WA0cc73JVFXI9C04mc81%40thread.tacv2/General?groupId=00a9d31e-6663-4680-9fb7-963929de9a17&tenantId=3efd4d88-9b88-4fc9-b6c0-c7ca50f1db57)

 

*ℹ You will not face negative consequences for reporting a security issue in good faith, even if you were involved in the activity that led to it.*

 

# 10 Acknowledgement of HPC in Publications

Research outputs produced using TalTech HPC resources should acknowledge the facility. Suggested citation:

H. Herrmann, T. Kaevand and L. Anton, “BASE: TalTech's HPC Infrastructure 2020--2024”. TalTech Data Repository, Mar. 22, 2025. doi: [10.48726/zf23z-8ba50](https://data.taltech.ee/doi/10.48726/zf23z-8ba50).

See: <https://docs.hpc.taltech.ee/acknowledgement.html> 

For specific citation formats required by funders, contact HPC support. Please also notify HPC support when publications acknowledging TalTech HPC are accepted — this helps demonstrate the facility's research impact.

 

# 11 Policy Updates

This policy is reviewed at least annually. When the policy is updated, all active users will be notified by email. Continued use of HPC resources after a policy update constitutes acceptance of the revised policy. For significant changes, a new signed acknowledgement may be required.

The current version of this policy is always available at: \[HPC documentation URL — to fill in\]

 

# 12 Contact and Support

 

|  |  |
| --- | --- |
| **Matter** | **Contact** |
| General HPC support, account issues, job help | <hpcsupport@taltech.ee> |
| Sensitive / confidential data registration | <hpcsupport@taltech.ee> |
| Security incidents | <hpcsupport@taltech.ee> |
| Personal data (GDPR) questions | TalTech Data Protection Officer <andmekaitse@taltech.ee> |
| Export control or legal questions | TalTech Legal <juristid@taltech.ee> |
| Policy questions | <hpcsupport@taltech.ee> |

#  13 Terms

- PII - Personally identifiable information (PII) constitutes any data that can pinpoint an individual, either by itself or when combined with other information.
- Project allocation - Slurm account and the resources assigned (e.g. storage quota) to a project or user account
